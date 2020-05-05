# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fawkes,
  ecto_repos: [Fawkes.Repo]

# Configures the endpoint
config :fawkes, FawkesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i6j7u+1cTwBGEIC6fik3YIsrjIvIdxSIv4u4m90/bZ0UccXWOJVdY9r89u9aC85I",
  render_errors: [view: FawkesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Fawkes.PubSub,
  live_view: [signing_salt: "SFW0x+Fs"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
