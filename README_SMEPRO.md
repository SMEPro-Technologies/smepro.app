# SMEPro.app Powered by RI‑42
SMEPro is a next‑generation intelligence platform built on RI‑42, the unified Reasoning Infrastructure that delivers multi‑persona reasoning, Safe AI governance, PreCognition forecasting, and persistent knowledge continuity across every session.

This repository contains the SMEPro Frontend, a modern React + Vite application that interfaces with RI‑42 through secure Cloud Run APIs.

✨ **Core Features**
Multi‑Persona Chat (RI‑42 Orchestration)
Engage with multiple SME personas (Engineering, Legal, Operations, Safety) in a single session.
RI‑42 routes each turn through the YBR cognitive pipeline for consistent, auditable reasoning.

**SMEPro Vault**
Save, search, and analyze knowledge items grounded in RI‑42’s pgvector RAG index and industrial ontologies.

**SMEBuilder & Toolchain**
Generate production‑ready assets:
READMEs, SOPs, briefs, specs, diagrams, and social content.

**Multi-Agent Collaboration**
A multimodal workspace for text, image, and video generation using Gemini models under RI‑42 governance.

**Workshop Mode**
A structured environment where multiple personas co‑reason toward a defined objective.

**Interactive Action Mode**
Turns AI outputs into interactive UI elements for step‑by‑step execution and contextual tool suggestions.

**SAFE AI**
A frontend visualization of RI‑42’s Safe AI ladder:
Warning → Advisory → Timeout → Ban.

🧠 **RI‑42 — The Reasoning Infrastructure**
RI‑42 provides:

YBR 5‑layer cognitive pipeline

Persona orchestration

PreCognition risk forecasting

Safe AI governance

RAG + Vault + Ontologies

Reasoning breadcrumbs

Cohort versioning (RI‑42‑24A, etc.)

The frontend is the interface — RI‑42 is the intelligence.

📘 **Architecture Diagram**
See: docs/architecture/ri42_frontend_mermaid.md

🚀 Tech Stack
React 18 + Vite 5

TypeScript

TailwindCSS

Google GenAI SDK

Stripe Elements

Cloud Run deployment

pgvector‑powered backend

📂 Project Structure
mermaid
graph TD
    A(SMEPro Repo)
    A --> components/
    A --> services/
    A --> server/
    A --> public/
    A --> src/
    A --> App.tsx
    A --> vite.config.ts
Full repo diagram included in repo_structure.md.

🧾 Stripe Subscription Flow
Backend‑driven PaymentIntent creation

Secure PaymentElement rendering

Webhook‑verified subscription lifecycle

Database alignment with Stripe’s model

⚙️ *Running Locally*
bash
npm install
npm run dev
App runs at:
http://localhost:5173

🌐 *Deployment*
Optimized for Google Cloud Run.
Adjust vite.config.ts proxy for your backend URL.

📄 *License*
Proprietary — SMEPro.app

3. *Product‑Ready Landing Page (RI‑42 Branding)*
Below is a marketing‑grade landing page you can paste into Webflow, Next.js, or your marketing site.

*SMEPro.app — Powered by RI‑42*
Clarity from Complexity
SMEPro transforms raw vision into actionable outcomes using RI‑42, the world’s first unified Reasoning Infrastructure designed for industrial, regulated, and high‑stakes environments.

🚀 **Why SMEPro**
Beyond Chat — The Intelligence Layer
Standard LLMs forget everything.
SMEPro builds a persistent Global Intelligence Base that compounds across every session.

Multi‑Persona Reasoning
Engineering. Legal. Operations. Safety.
All collaborating in real time through RI‑42’s persona orchestration engine.

Production‑Ready Outputs
Generate briefs, SOPs, diagrams, code, audits, and strategic plans — not just text.

Industrial Sector Alignment
Deep NAICS‑mapped reasoning for energy, manufacturing, logistics, healthcare, and more.

Safe AI by Design
RI‑42 enforces a multi‑layered safety ladder:
Warning → Advisory → Timeout → Ban  
with full reasoning breadcrumbs for auditability.

🧠 Powered by RI‑42
RI‑42 is SMEPro’s reasoning substrate:

YBR 5‑layer cognitive pipeline

PreCognition risk forecasting

Persona orchestration

RAG + Vault + Ontologies

Safe AI governance

Cohort versioning

This is not “AI chat.”
This is infrastructure‑grade intelligence.

🛠 What You Can Do
Chat with Multiple Experts
Bring Engineering, Legal, and Operations into the same conversation.

Build Assets Instantly
Generate production‑ready documents, code, and workflows.

Analyze Your Knowledge
Upload SOPs, PDFs, and datasets — RI‑42 grounds every answer.

Run Workshops
Structured, agenda‑driven collaboration with multiple AI experts.

Generate Media
Text, images, and video — all governed by RI‑42 safety and context.

📊 Compare SMEPro to Legacy AI
Feature	Legacy AI	SMEPro
Architecture	Single Agent	Multi‑Agent Clusters
Memory	Ephemeral	Global Intelligence Base
Domain Expertise	Generic	Industrial Sector Alignment
Outputs	Text	Production‑Ready Assets
Safety	Basic Filters	RI‑42 Safe AI Governance
🌐 Start Building with SMEPro
Your intelligence layer begins here.  
Turn raw vision into engineered outcomes — safely, reliably, and at scale.

→ Get Started at SMEPro.app
