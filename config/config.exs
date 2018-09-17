# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_channels_pwa,
  ecto_repos: [PhoenixChannelsPwa.Repo]

# Configures the endpoint
config :phoenix_channels_pwa, PhoenixChannelsPwaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YjNA7jRwcKtG4c2YuhV5pCr8wDCeZY/pZwOUblWHFY8q5wA1nzwQlgdkXH5bs27R",
  render_errors: [view: PhoenixChannelsPwaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixChannelsPwa.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
