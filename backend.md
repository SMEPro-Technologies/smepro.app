graph TD

    A[backend/]

    %% ───────────────────────────────
    %% SRC ROOT
    %% ───────────────────────────────
    A --> SRC(src/)

    %% API LAYER
    SRC --> API(api/)
    API --> API_Turns(turns.ts)
    API --> API_Audit(audit.ts)
    API --> API_Vault(vault.ts)
    API --> API_Personas(personas.ts)
    API --> API_Health(healthcheck.ts)

    %% RI‑42 CORE
    SRC --> RI42(ri42/)
    RI42 --> Router(router.ts)
    RI42 --> Personas(personas.ts)
    RI42 --> SafeAI(safe-ai.ts)
    RI42 --> PreCog(precognition.ts)
    RI42 --> Breadcrumbs(breadcrumbs.ts)

    %% YBR PIPELINE
    RI42 --> YBR(YBR Pipeline/)
    YBR --> YBR_Retrieval(retrieval.ts)
    YBR --> YBR_Context(context.ts)
    YBR --> YBR_Reasoning(reasoning.ts)
    YBR --> YBR_Forecasting(forecasting.ts)
    YBR --> YBR_Memory(memory.ts)

    %% SERVICES
    SRC --> Services(services/)
    Services --> S_Gemini(gemini.ts)
    Services --> S_Stripe(stripe.ts)
    Services --> S_DB(db.ts)
    Services --> S_Embeddings(embeddings.ts)
    Services --> S_Config(config.ts)
    Services --> S_Logger(logger.ts)

    %% MODELS
    SRC --> Models(models/)
    Models --> M_User(User.ts)
    Models --> M_Session(Session.ts)
    Models --> M_Vault(VaultItem.ts)
    Models --> M_RAG(RagIndex.ts)
    Models --> M_Subscription(Subscription.ts)
    Models --> M_Breadcrumb(Breadcrumb.ts)

    %% UTILS
    SRC --> Utils(utils/)
    Utils --> U_Validators(validators.ts)
    Utils --> U_Parsers(parsers.ts)
    Utils --> U_Types(types.ts)
    Utils --> U_Error(error.ts)

    %% ROOT FILES
    A --> Index(index.ts)
    A --> Package(package.json)
    A --> Dockerfile(Dockerfile)
    A --> Env(.env.example)
    A --> Migrations(migrations/)
    A --> Tests(tests/)
