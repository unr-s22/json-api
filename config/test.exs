import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :json_api, JsonApi.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "json_api_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :json_api, JsonApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "R1+wAIFCoufE11tdkRQsNHp5Azs2Elhmv11qStnAh9dNTi5znQRStda13f8QHYMn",
  server: false

# In test we don't send emails.
config :json_api, JsonApi.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
