class Api::V1::AdvideosController < ApplicationController
  def show
    @advideo = Advideo.find params[:id]
     render json: @advideo
  end

  def display_videos     
     if params.has_key?(:no_of_videos)
       @advideo = Advideo.last(params[:no_of_videos])
       @advideo.each do |video|
         v_url = video.video_url
         v_url = v_url.sub 'http://cdn.reachtv.co', 'http://hls.reachtv.co'
         v_url = v_url + ".m3u8"
         video.hls_url = v_url   
       end               
     else
       @advideo = Advideo.last
         v_url = @advideo.video_url
         v_url = v_url.sub 'http://cdn.reachtv.co', 'http://hls.reachtv.co'
         v_url = v_url + ".m3u8"
         @advideo.hls_url = v_url              
     end
     # @advideo = Advideo.new    
     # @advideo.id = 60
     # @advideo.video_url = "http://cdn.reachtv.co/ad_videos/60/100_0101.mp4"
     # @advideo.hls_url = "http://hls.reachtv.co/ad_videos/60/100_0101.mp4.m3u8"    
     render json: @advideo
  end 
  
  
  def video_played_summary
    @adVideo = Advideo.find params[:id]
    @adVideoLen = params[:length_played]
    render json: "{advideo':{'message': 'Dummy API call succeeful'}}"  
  end
end
