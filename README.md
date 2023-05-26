This application retrieves and gathers weather data from a specified city parameter. The response includes information such as temperature, wind speed, wind direction, and the timestamp of the data retrieval. Additionally, the response provides geolocation attributes like latitude, longitude, and timezone.

Potential use of the application:

Daily Weather Updates - can get the latest weather forecast that can help the potential Users plan their activities accordingly. 

Travel/Event Planning - It enables the potential Users to make informed decisions about rescheduling, preparing contingency plans, or providing suitable accommodations.

Research and Analysis: Researchers, scientists, and weather enthusiasts can utilize the app to collect weather data for analysis, research purposes, or to monitor and track weather patterns over time.

By leveraging this app's data and insights, people who works in Agricultural Industry can enhance their decision-making processes, improve crop yields, optimize resource utilization, minimize risks, and ultimately increase farm productivity and profitability.



<br/><br/><br/>
For sample request and responses, please visit:
* https://documenter.getpostman.com/view/378017/2s93m7VgE6

<br/>
How to run locally: 
Dependencies: Ruby version: 2.6.3, Rails version: 6.1.7.3

<br/><br/>
To view the OpenTelemetry locally: http://localhost:3301

* Do not forget to install docker & signoz on your current machine.<br/>
(https://signoz.io/docs/install/docker/?utm_source=blog&utm_medium=opentelemetry_ruby)
<br/><br/>
To start viewing the logs and the metrics from OpenTelemetry, please run:

OTEL_EXPORTER=otlp OTEL_SERVICE_NAME=weatherapi OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4318 OTEL_RESOURCE_ATTRIBUTES=application=sparkapp rails server

<br/>
