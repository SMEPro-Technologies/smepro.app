# Safe AI Governance

Safe AI provides the enforcement layer for compliance, safety, and alignment.

## Enforcement Models

### Real-time Enforcement
Standard tiers utilize real-time checks for every turn, ensuring immediate intervention.

### Pooled Enforcement (SMEPro I)
To reduce overhead, the SMEPro I tier utilizes a **Shared Moderation Pool**.
*   **Batching**: Enforcement checks are processed in batches (e.g., every 5 minutes).
*   **Telemetry**: Logging is reduced to **Critical Events Only** to minimize noise and cost.
    *   *Logged Events*: Persona switches, app builds, compliance triggers.
    *   *Suppressed Events*: Routine turn interactions, successful harmless queries.
