use Mix.Config

# General application configuration
config :upload_test,
  namespace: UploadTest

# Configures the endpoint
config :upload_test, UploadTest.Endpoint,
  http: [port: 4000],
  url: [host: "0.0.0.0"],
  secret_key_base: :crypto.strong_rand_bytes(128),
  live_reload: false,
  debug_errors: true,
  server: true

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]
