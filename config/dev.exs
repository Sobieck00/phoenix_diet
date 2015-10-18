use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :phoenix_diet, PhoenixDiet.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  cache_static_lookup: false,
  check_origin: false,
  watchers: [node: [
    "node_modules/brunch/bin/brunch", "watch", "--stdin"
    ]]

# Watch static and templates for browser reloading.
config :phoenix_diet, PhoenixDiet.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_diet, PhoenixDiet.Repo,
  adapter: Tds.Ecto,
  username: "njhknhasfdhjnkasdf23009@phoenixdiet",
  password: "sadfnsadfun2389fhj9nasfujn320*((*HYasdnn1d)901nkAS()D090*/-+*/-+*/asd51654",
  database: "phoenix_diet_dev",
  hostname: "phoenixdiet.database.windows.net",
  encrypt: true,
  trustServerCertificate: false



  ##Server=tcp:phoenixdiet.database.windows.net,1433;Database=phoenix_diet;User ID=njhknhasfdhjnkasdf23009@phoenixdiet;Password={your_password_here};Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;
  #jdbc:sqlserver://phoenixdiet.database.windows.net:1433;database=phoenix_diet;user=njhknhasfdhjnkasdf23009@phoenixdiet;password=sadfnsadfun2389fhj9nasfujn320*((*HYasdnn1d)901nkAS()D090*/-+*/-+*/asd51654;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;
  #pool_size: 10,
  #url: "ecto://sqlserver:phoenixdiet.database.windows.net:1433;database=phoenix_diet;user=njhknhasfdhjnkasdf23009@phoenixdiet;password=sadfnsadfun2389fhj9nasfujn320*((*HYasdnn1d)901nkAS()D090*/-+*/-+*/asd51654;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;"
