class ErrorsController < ApplicationController
#   layout false

  # skipping CSRF protection is required here to be able to handle requests for js files
#   skip_before_action :verify_authenticity_token

  def show
    render json: "404 template custom. Building"
  end

  private

  def code
    params[:code]
  end
end