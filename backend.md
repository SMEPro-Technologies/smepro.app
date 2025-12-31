### Overview

Below is a turnkey package you can paste directly into your docs, README, or markdown pages. It contains four **Mermaid** diagrams (backend architecture, `/turns` sequence, Stripe subscription lifecycle, and YBR pipeline) that are formatted to avoid common GitHub Mermaid parser issues. Each block is ready to drop into a `.md` file under `docs/` or `README.md`.

---

### How to use

- Paste each Mermaid block into your Markdown file as shown.  
- Ensure your renderer supports Mermaid (GitHub README, GitHub Pages with mermaid enabled, or a docs site with Mermaid).  
- If a diagram fails to render, remove any extra leading spaces and confirm the file is saved with UTF-8 encoding.

---

### Backend architecture

```mermaid
flowchart LR
  User["User / Client"]
  Frontend["SMEPro Frontend\nReact + Vite"]
  User -->|HTTP or WebSocket| Frontend

  Frontend -->|API Calls| APIGW["API Gateway\nCloud Run"]
  APIGW --> Auth["Auth and Session Manager"]
  APIGW --> StripeAPI["Stripe Proxy"]
  APIGW --> GeminiProxy["Gemini Execution Proxy"]
  APIGW --> RI42_API["RI-42 Orchestration API"]

  subgraph RI42["RI-42 - Reasoning Infrastructure"]
    direction TB
    Router["Routing Engine\nRules • Signals • Tiering"]
    Personas["Persona Orchestration\nENG • LEGAL • OPS • SAFETY"]
    YBR["YBR Cognitive Pipeline"]
    SafeAI["Safe AI Governance"]
    Breadcrumbs["Reasoning Breadcrumbs\nAudit Log"]
    Knowledge["Knowledge Substrate\nVault • RAG • Ontologies"]
  end

  RI42_API --> Router
  Router --> Personas
  Router --> YBR
  Router --> SafeAI
  YBR --> Knowledge
  YBR --> Breadcrumbs
  SafeAI --> Breadcrumbs
  Personas --> Breadcrumbs

  GeminiProxy -->|model calls| Gemini["Gemini Model Fleet"]
  Knowledge -->|vector queries| PGVector["Cloud SQL + pgvector"]
  Breadcrumbs -->|writes| PGVector
  Auth -->|user session| PGVector

  StripeAPI -->|webhooks| Webhooks["Stripe Webhooks Handler"]
  Webhooks --> APIGW
  APIGW -->|billing events| BillingSvc["Billing Service"]
  BillingSvc --> PGVector

  RI42_API --> Observability["Logging • Metrics • Tracing"]
  GeminiProxy --> Observability
  PGVector --> Observability
```

---

### /turns request lifecycle

```mermaid
sequenceDiagram
  participant U as User
  participant F as Frontend
  participant G as API_Gateway
  participant R as RI-42_Orchestrator
  participant A as Analyzer
  participant RULE as Rules_Engine
  participant RAG as RAG_Retriever
  participant SAFE as SafeAI_Precheck
  participant MODEL as Gemini_Model
  participant SAFE2 as SafeAI_Postcheck
  participant B as Breadcrumb_Store

  U->>F: submit prompt with session id and context
  F->>G: POST /v1/turns
  G->>R: forward request
  R->>A: extract signals, intents, NAICS, complexity
  A-->>R: return signals
  R->>RULE: evaluate routing rules
  RULE-->>R: selected personas and model tier
  R->>RAG: query top N context chunks
  RAG-->>R: return context chunks
  R->>SAFE: pre-check policies and recent events
  SAFE-->>R: allowed tiers or escalation
  R->>MODEL: invoke model with assembled prompt and context
  MODEL-->>R: model output and metadata
  R->>SAFE2: post-check output for disallowed content
  SAFE2-->>R: pass or escalate
  R->>B: persist breadcrumb with signals, rules, rag ids, model call, safe ai result
  R-->>G: return response payload with answer and explainability
  G-->>F: forward response
  F-->>U: display response
```

---

### Stripe subscription lifecycle

```mermaid
flowchart TD
  Customer[Customer]
  Frontend[Signup Modal]
  Backend[Backend API]
  Stripe[Stripe]
  DB[Cloud SQL]
  Webhook[Webhook Handler]
  Billing[Billing Service]

  Customer --> Frontend
  Frontend -->|create checkout| Backend
  Backend -->|create checkout session| Stripe
  Stripe -->|show checkout page| Customer
  Customer -->|complete payment| Stripe
  Stripe -->|event checkout.session.completed| Webhook
  Webhook -->|notify backend| Backend
  Backend -->|persist billing data| DB
  Backend -->|trigger billing workflow| Billing
  Billing -->|update billing records| DB
  DB -->|sync subscription state| Frontend
  Frontend -->|render payment element using client secret| Customer
```

---

### YBR cognitive pipeline

```mermaid
flowchart TB
  Input["User Prompt and Session Context"]
  Retrieval["Layer 1 Retrieval\nRAG and pgvector"]
  Context["Layer 2 Context Understanding"]
  Reasoning["Layer 3 Reasoning and Deviation Scoring"]
  PreCog["Layer 4 PreCognition Forecasting"]
  Memory["Layer 5 Loop Memory"]
  Output["Actionable Output and Evidence"]

  Input --> Retrieval
  Retrieval --> Context
  Context --> Reasoning
  Reasoning --> PreCog
  PreCog --> Memory
  Memory --> Output

  subgraph Notes
    N1["Retrieval: Top N context; persona filters"]
    N2["Context: Entity extraction; intent; NAICS mapping"]
    N3["Reasoning: Multi persona synthesis; rule evaluation"]
    N4["PreCog: Risk scoring; impact simulation"]
    N5["Memory: Breadcrumbs; vault updates; cohort tagging"]
  end

  Retrieval --- N1
  Context --- N2
  Reasoning --- N3
  PreCog --- N4
  Memory --- N5
```

---
