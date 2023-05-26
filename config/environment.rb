# Load the Rails application.
require 'opentelemetry/sdk'
require_relative "application"

# Initialize the Rails application.

OpenTelemetry::SDK.configure do |c|
  c.use_all
end
Rails.application.initialize!
