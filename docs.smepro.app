docs/
│
├── index.md                     # Landing page: What is SMEPro + RI‑42
│
├── getting-started/
│   ├── overview.md              # High-level intro to SMEPro + RI‑42
│   ├── quickstart.md            # 5-minute setup
│   ├── architecture-summary.md  # One-page architecture diagram
│   └── glossary.md              # Key terms (RI‑42, YBR, Vault, Personas)
│
├── ri42/
│   ├── index.md                 # What is RI‑42
│   ├── cohorts.md               # Cohort versioning (RI‑42‑24A, etc.)
│   ├── cognitive-pipeline.md    # YBR 5-layer pipeline
│   ├── persona-orchestration.md # ENG, LEGAL, OPS, SAFETY personas
│   ├── routing-engine.md        # Rules, signals, model tiering
│   ├── safe-ai.md               # Safe AI ladder + enforcement
│   ├── precognition.md          # Risk forecasting engine
│   ├── breadcrumbs.md           # Reasoning breadcrumbs schema
│   └── api/
│       ├── overview.md
│       ├── turns.md             # POST /v1/turns
│       ├── audit.md             # GET /v1/audit/{sessionId}
│       ├── vault.md             # Vault ingestion + retrieval
│       └── personas.md          # Persona management API
│
├── frontend/
│   ├── index.md                 # SMEPro Frontend overview
│   ├── chat.md                  # ChatWindow + persona routing
│   ├── vault.md                 # SMEVault UI
│   ├── builder.md               # SMEBuilder + toolchain
│   ├── workbench.md             # Text/Image/Video generation
│   ├── workshop-mode.md         # Structured collaboration
│   ├── action-mode.md           # Interactive Action Mode
│   ├── safe-ai-ui.md            # SAFE AI simulation
│   └── repo-structure.md        # Mermaid repo diagram
│
├── backend/
│   ├── index.md                 # Backend overview
│   ├── ri42-orchestrator.md     # How the backend calls RI‑42
│   ├── gemini-integration.md    # Execution engine integration
│   ├── stripe-payments.md       # Subscription lifecycle
│   ├── webhook-security.md      # Webhook verification
│   ├── cloud-run.md             # Deployment architecture
│   └── repo-structure.md        # Backend repo layout
│
├── database/
│   ├── index.md                 # DB overview
│   ├── schema.md                # Full schema (Cloud SQL + pgvector)
│   ├── migrations.md            # Knex migrations
│   ├── rag-index.md             # Vector search + embeddings
│   ├── vault-items.md           # Knowledge storage
│   ├── ontology-mapping.md      # NAICS, CIP, Compliance
│   └── best-practices.md        # Idempotency, auditability, RLS
│
├── guides/
│   ├── building-with-ri42.md    # How to build apps on RI‑42
│   ├── designing-personas.md    # Persona creation guide
│   ├── writing-rules.md         # Routing rule design
│   ├── ingesting-documents.md   # Vault ingestion pipeline
│   └── safe-ai-playbook.md      # Safety design patterns
│
├── examples/
│   ├── sample-turn.md           # Example turn with breadcrumbs
│   ├── sample-workshop.md       # Example workshop session
│   ├── sample-vault-ingest.md   # Example ingestion payload
│   └── sample-precognition.md   # Example risk forecast
│
└── assets/
    ├── diagrams/                # Mermaid + SVG diagrams
    ├── logos/                   # RI‑42 + SMEPro branding
    └── code/                    # Example snippets
