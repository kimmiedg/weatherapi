require 'rails_helper'
RSpec.describe RequestWeatherData do
  subject {
    RequestWeatherData.new(city: "Manila", country: 'Philippines')
  }

  it "must return JSON format response" do
    expect(subject.call.is_a?(Hash)).to be true
  end

  it "must return a geo location JSON response" do
    geo_loc = subject.send(:get_geo_location)
    expect(subject.key?("lat") && subject.key?("lon")).to be true
  end

  it "must return success forecast in JSON format" do
    forecast = subject.send(:generate_forecast)
    expect(forecast.key?("current_weather")).to be true
  end
end
