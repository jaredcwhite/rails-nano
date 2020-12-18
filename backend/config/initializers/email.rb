# frozen_string_literal: true

Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.sendgrid.net",
    port: 587,
    domain: ENV["SENDGRID_DOMAIN"],
    user_name: ENV["SENDGRID_USERNAME"],
    password: ENV["SENDGRID_KEY"],
    authentication: "plain",
    enable_starttls_auto: true
  }
end
