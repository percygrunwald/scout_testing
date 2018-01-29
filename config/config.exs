# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :scout_testing,
  ecto_repos: [ScoutTesting.Repo]

# Configures the endpoint
config :scout_testing, ScoutTestingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QkkIiAe+5jUzwVc3hxazrKKm2UXr/o0jk+JD/AIKaorCDr1vxMeWvRYsaQiPdnWH",
  render_errors: [view: ScoutTestingWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ScoutTesting.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :scout_apm,
  name: "Scout Test", # The app name that will appear within the Scout UI
  dev_trace: true

config :phoenix, :template_engines,
  eex: ScoutApm.Instruments.EExEngine,
  exs: ScoutApm.Instruments.ExsEngine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
