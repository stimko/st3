# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :st,
  ecto_repos: [St.Repo]

# Configures the endpoint
config :st, StWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6qdE31LQZXmxt34wGLn7EJIlCImWh69i/PvyjvnYn8+ZScFyVGd/mqeG21D2gfD5",
  render_errors: [view: StWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: St.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
