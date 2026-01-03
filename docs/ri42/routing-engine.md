# Routing Engine & Model Tiering

The Routing Engine is the central decision-making component of the RI-42 infrastructure. It evaluates incoming requests against defined rules, signals, and available model tiers to determine the optimal execution path.

## Model Tiering

SMEPro offers different tiers to balance performance, cost, and capability.

### SMEPro I — Scaled Configuration for Margin Efficiency

This tier is optimized for high-volume, predictable workloads where cost efficiency is paramount.

#### Configuration Specifications

1.  **Cap Vault Query Depth & Frequency**
    *   **Query Depth Limit**: Maximum 2 hops per prompt (e.g., prompt → 1 related Vault item → 1 linked reference).
    *   **Query Frequency**: Limit to 10 Vault queries per session or 100 queries per month.
    *   **Impact**: Reduces pgvector and Cloud SQL load by ~40%, preserving semantic recall while controlling cost.

2.  **Static RAG Only (No Dynamic Vault Retrieval)**
    *   **Mechanism**: Uses pre-indexed, curated documents only (e.g., onboarding guides, templates, FAQs).
    *   **Restriction**: No live Vault vector search during runtime.
    *   **Impact**: Eliminates real-time vector filtering and reduces compute + latency; ideal for predictable, low-variance use cases.

3.  **Shared Moderation & Telemetry Pools**
    *   **Moderation**: Use pooled Safe AI enforcement layer with batched processing (e.g., 5-minute intervals).
    *   **Telemetry**: Log only critical events (e.g., persona switch, app build, compliance trigger).
    *   **Impact**: Reduces Cloud Logging, Pub/Sub, and moderation costs by ~60% for this tier.
