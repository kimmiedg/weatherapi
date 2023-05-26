class ErrorsController < ApplicationController

  def not_found
    render json: {errors: "Route doesn't exist", status: 404}
  end
end
