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

config :bamboo, :json_library, Jason

config :vemosla_mail, :email,
 from: "info@vemosla.com"

# Configure Mix tasks and generators
config :vemosla,
  ecto_repos: [Vemosla.Repo]

#Ficheros para el sitio web
config :vemosla,
  uploads_files_path: "files",
  uploads_url_path: "/files"

config :vemosla_web,
  ecto_repos: [Vemosla.Repo],
  generators: [context_app: :vemosla, binary_id: true]

# Configures the endpoint
config :vemosla_web, VemoslaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aSzjs63WcM3jEalNjo6cCAAJR0rKGIf90HWY43uSkFkLnu45EV1bkhwldAwaYB69",
  render_errors: [view: VemoslaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Vemosla.PubSub,
  live_view: [signing_salt: "9Oll7HCE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
