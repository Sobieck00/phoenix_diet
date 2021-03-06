use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_diet, PhoenixDiet.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_diet, PhoenixDiet.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "sadfnsadfun2389fhj9nasfujn320*((*HYasdnn1d)901nkAS()D090*/-+*/-+*/asd51654",
  database: "phoenix_diet_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
