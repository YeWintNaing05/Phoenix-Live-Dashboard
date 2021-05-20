# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :taskassign,
  ecto_repos: [Taskassign.Repo]

# Configures the endpoint
config :taskassign, TaskassignWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5JFpRlf60n17nSJpht70wqq84peOJ9NKxy0/X9xjU6W4TnIZxvhjuUaGT9gddqFc",
  render_errors: [view: TaskassignWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Taskassign.PubSub,
  live_view: [signing_salt: "TDxaFbaP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
