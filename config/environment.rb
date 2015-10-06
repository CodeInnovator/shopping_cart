# Load the Rails application.
require File.expand_path('../application', __FILE__)


Shopping::Application.configure do

config.action_mailer.delivery_method = :smtp

config.action_mailer.smtp_settings = {
      :address              => 'smtp.gmail.com',
      :port                 => 587,
      :domain               => '192.241.128.146:80',
      :user_name            => 'lazymart247@gmail.com',
      :password             => '23568907jkl',
      :authentication       => 'plain',
      :enable_starttls_auto => true
  }
end

# Initialize the Rails application.
Rails.application.initialize!

