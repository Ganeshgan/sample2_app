# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => 'invoscape.com',
  :user_name => 'ganesh.newbie@invoscape.com',
  :password => 'Fruit12butter',
  :authentication => 'plain',
  :enable_starttls_auto => true
  }
ActionMailer::Base.delivery_method = :smtp
