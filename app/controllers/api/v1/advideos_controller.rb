class Api::V1::AdvideosController < ApplicationController
  def show
    @advideo = Advideo.find params[:id]
     render json: @advideo
  end

  def display_videos
     @advideo = Advideo.new    
     @advideo.id = 60
     @advideo.video_url = "http://cdn.reachtv.co/ad_videos/60/100_0101.mp4"
     @advideo.hls_url = "http://hls.reachtv.co/ad_videos/60/100_0101.mp4.m3u8"    
     render json: @advideo
  end 
end
