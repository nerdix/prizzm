# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Prizzm::Application.initialize!


if ENV['HEROKU_APP'] ==  'prizzm-development'
  Haml::Template.options[:ugly] = false
end
