use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :crm, Crm.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :crm, Crm.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "crm_test",
  size: 1,
  max_overflow: false
