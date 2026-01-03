# Routing Engine

## SMEPro I (Optimized)

The SMEPro I tier is designed to maintain core value while preserving cost efficiency. It is suitable for high-volume, lower-complexity tasks.

### Features
- **Personas:** Limited to 3 personas (selected from standard pool) with capped reasoning depth.
- **RAG:** Static RAG only. No dynamic Vault queries are permitted.
- **Infrastructure:** Uses shared moderation and telemetry infrastructure to reduce overhead.

### Configuration

Below is the configuration definition for the SMEPro I tier:

```json
{
  "tier": "SMEPro_I_Optimized",
  "routing": {
    "max_reasoning_depth": "capped",
    "allowed_personas": 3,
    "rag_mode": "static_only",
    "dynamic_vault_access": false
  },
  "infrastructure": {
    "moderation": "shared",
    "telemetry": "shared"
  }
}
```
