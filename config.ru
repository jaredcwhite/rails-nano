require "phaedra/rack_middleware"
require_relative "./backend/config/application"

if Dir.exist?("output")
  # Only use static middleware if the output folder exists:
  use Phaedra::Middleware::Static, root: "output", urls: %w[/]
  use Phaedra::Middleware::NotFound, "output/404.html"
end

run NanoAPI
