# Vault Ingestion & Retrieval

The Vault is the knowledge substrate of the RI-42 infrastructure, powered by pgvector.

## Retrieval Strategies

### Dynamic Retrieval
Standard retrieval allows for real-time vector search across the entire knowledge base, dynamically filtering based on context and persona.

### Static RAG (SMEPro I)
For cost-optimized tiers like SMEPro I, retrieval is restricted to **Static RAG**.
*   **Definition**: Only pre-indexed, curated documents are accessible.
*   **No Live Search**: Dynamic filtering and live vector search during runtime are disabled.
*   **Query Limits**:
    *   **Depth**: Max 2 hops (Prompt -> Item -> Reference).
    *   **Frequency**: Hard cap of 10 queries/session or 100/month.
