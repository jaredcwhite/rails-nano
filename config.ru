require "phaedra/rack_middleware"
require_relative "./backend/config/application"

# Uncomment the following if you wish to deploy a production Rails backend
# separately from the static Bridgetown website.
# unless ENV["RAILS_ENV"] == "production"
use Phaedra::Middleware::Static, root: "output", urls: %w[/]
use Phaedra::Middleware::NotFound, "output/404.html"
# end

run NanoAPI
