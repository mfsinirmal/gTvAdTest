class Api::V1::AdvideosController < ApplicationController
  def show
    @advideo = Advideo.find params[:id]
     render json: @advideo
  end
end
