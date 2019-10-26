# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :netflix_wrangler_api,
  ecto_repos: [NetflixWranglerApi.Repo]

config :netflix_wrangler_api_web,
  ecto_repos: [NetflixWranglerApi.Repo],
  generators: [context_app: :netflix_wrangler_api]

# Configures the endpoint
config :netflix_wrangler_api_web, NetflixWranglerApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "k7MQL/wc5dYZqTDH8rgXbiDUg0fVbMEVNXHafQaaylCgSCkI9v+n3ToUT9ZqUM4D",
  render_errors: [view: NetflixWranglerApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NetflixWranglerApiWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
