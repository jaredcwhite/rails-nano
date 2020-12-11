require "action_controller/railtie"
require "active_record/railtie"

class NanoAPI < Rails::Application
  config.root = File.dirname(__dir__) # set the root to `backend`
  config.autoloader = :zeitwerk
  if Rails.env.production?
    config.eager_load = true 
    config.cache_classes = true
  else
    config.eager_load = false
  end
  config.autoload_paths << File.dirname(__dir__) # autoload right from `backend`
  config.api_only = true # removes middleware we dont need
  config.logger = Logger.new($stdout)
  Rails.logger  = config.logger
  config.secret_key_base = ENV["SECRET_KEY_BASE"] # Rails won't boot w/o a secret token for session, cookies, etc.
end

NanoAPI.initialize!
