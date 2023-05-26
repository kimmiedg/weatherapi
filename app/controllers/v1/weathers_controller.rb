class V1::WeathersController < ApplicationController

  def forecast
    render json: RequestWeatherData.call(city: params[:city], country: params[:country])
  end
end
