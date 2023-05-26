require 'uri'
require 'net/http'
class RequestWeatherData

  def initialize(city:, country:)
    @city = city
    @country = country
  end

  def self.call(city:, country:)
    new(city: city, country: country).call
  end

  def call
    generate_forecast
  end

  private
    def uri_request(uri)
      begin
        result = Net::HTTP.get_response(uri)
        result = JSON.parse(result.body)
        result = result.first if result.is_a?(Array)
        result = { errors: "Please input correct parameters.", status: 400} if result.blank?
      rescue JSON::ParserError => e
        result = { errors: "Cannot parse request.", status: 409}
      end
      result
    end


    def get_geo_location
      return {errors: "City is not specified", status: 400} if @city.blank?

      country = @country.present? ? "&country=#{@country}" : ""
      uri = URI("https://nominatim.openstreetmap.org/search.php?city=#{@city}#{country}&format=jsonv2&limit=1")

      uri_request(uri)
    end

end
