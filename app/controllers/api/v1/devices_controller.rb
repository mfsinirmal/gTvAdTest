class Api::V1::DevicesController < ApplicationController
  def register_new_device
  
   @device = Device.new
   @device.udid = params[:udid]
   @device.appId = params[:appId]
   @device.sdkKey = params[:sdkKey]
   @device.authToken = "1234567890"
   
    if @device.save
      render json: @device, status: :created, location: @device
    else
      render json: @device.errors, status: :unprocessable_entity
    end
    
  end
  
  
  
  private

    def set_device
      @device = Device.find(params[:id])
    end

    def device_params
      # params.require(:device).permit(:udid, :appId, :sdkKey, :authToken, :expireOn)
      params.require(:device).permit(:udid, :appId, :sdkKey)
    end
end
