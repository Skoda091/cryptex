# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cryptex,
  ecto_repos: [Cryptex.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :cryptex, CryptexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7dCQtRWCtkUTrCI+zht+0p9ff0DjuU2k9P9nRDW8UDed5ybmmNlW/mzUNquwMGEk",
  render_errors: [view: CryptexWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cryptex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
