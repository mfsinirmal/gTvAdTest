json.array!(@devices) do |device|
  json.extract! device, :id, :udid, :appId, :sdkKey, :authToken, :expireOn
  json.url device_url(device, format: :json)
end
