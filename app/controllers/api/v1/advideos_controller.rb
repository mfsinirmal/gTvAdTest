class Api::V1::AdvideosController < ApplicationController
  def show
    @advideo = Advideo.find params[:id]
     render json: @advideo
  end

  def showvideos
     @advideo = Advideo.new    
     @advideo.id = 60
     @advideo.video_url = "http://cdn.reachtv.co/ad_videos/60/100_0101.mp4"    
     render json: @advideo
  end 
end
