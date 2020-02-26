# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :complex_forms,
  ecto_repos: [ComplexForms.Repo]

# Configures the endpoint
config :complex_forms, ComplexFormsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mBkInnhSy4lehNl38zrgEOHEqMbEl6KG0NEAZUj2oAG22F1VVHo4tayxBwDilESz",
  render_errors: [view: ComplexFormsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ComplexForms.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "8iifG2i3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
