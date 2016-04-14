class Api::V1::AdvideosController < ApplicationController
  def show
    @advideo = Advideo.find params[:id]
     render json: @advideo
  end

  def display_videos     
     if params.has_key?(:no_of_videos)
       @advideo = Advideo.last(params[:no_of_videos])
     else
       @advideo = Advideo.last
     end
     @advideo.each do |i|
       @advideo[i]["hls_url"] = @advideo[i]["video_url"]
       @advideo[i]["hls_url"] = @advideo[i]["hls_url"].sub! 'https://reachtv-1238.storage.googleapis.com', 'http://hls.reachtv.co'
       @advideo[i]["hls_url"] = @advideo[i]["hls_url"].sub! 'http://cdn.reachtv.co', 'http://hls.reachtv.co'
       @advideo[i]["hls_url"] = @advideo[i]["hls_url"] + ".m3u8"              
     end 
     # @advideo = Advideo.new    
     # @advideo.id = 60
     # @advideo.video_url = "http://cdn.reachtv.co/ad_videos/60/100_0101.mp4"
     # @advideo.hls_url = "http://hls.reachtv.co/ad_videos/60/100_0101.mp4.m3u8"    
     render json: @advideo
  end 
end
