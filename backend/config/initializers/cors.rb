require "rack/cors"

Rails.application.config.middleware.insert_before 0, Rack::Cors, logger: (-> { Rails.logger }) do
  allow do
    origins '*'

    resource '*',
      :headers => :any,
      :methods => [:get, :post, :delete, :put, :patch, :options, :head],
      :max_age => 0
  end
end
