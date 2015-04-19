use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :crm, Crm.Endpoint,
  secret_key_base: "723S679rNhwMWwH9PBTEtMgHrM1fxlouxFg3dx8igXIkZ3l/6wCo3CxW1mx6cYd7"

# Configure your database
config :crm, Crm.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "root",
  password: "qwerty",
  database: "crm_prod"
