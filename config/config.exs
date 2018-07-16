# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pickup,
  ecto_repos: [Pickup.Repo]

# Configures the endpoint
config :pickup, PickupWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "f1jQanFt2ASLlhh5stX4ULl5oxjGy+ODSQXC/2ThJE/StKeGCG6n9NdtCkf8oTfy",
  render_errors: [view: PickupWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pickup.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
