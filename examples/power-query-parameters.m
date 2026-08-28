section PortfolioParameters;

// Public placeholders only. Replace locally; never commit production values.
shared pServer = "example-sql-server.database.windows.net"
    meta [IsParameterQuery = true, Type = "Text", IsParameterQueryRequired = true];

shared pDatabase = "example_analytics"
    meta [IsParameterQuery = true, Type = "Text", IsParameterQueryRequired = true];

shared DB_Source =
    let
        Source = Sql.Database(pServer, pDatabase)
    in
        Source;

