require 'opentelemetry/sdk'
require 'opentelemetry/exporter/otlp'
require 'opentelemetry/instrumentation/all'
require 'opentelemetry/instrumentation/rails'
require 'opentelemetry/sdk/trace'
#require 'opentelemetry/instrumentation/postgresql'


OpenTelemetry::SDK.configure do |c|
    c.use 'OpenTelemetry::Instrumentation::Rails'
  #  c.use 'OpenTelemetry::Instrumentation::PostgresSQL'
    c.add_span_processor(
      OpenTelemetry::SDK::Trace::Export::BatchSpanProcessor.new( OpenTelemetry::Exporter::OTLP::Exporter.new(
        # The ADOT Collector is running as a sidecar and listening on port 4317
        endpoint: "http://localhost:3000/v1/traces"
      )
    ))
    c.service_name = 'app'
    c.service_version = '0.1.0'
  end
