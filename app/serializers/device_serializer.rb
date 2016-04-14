class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :udid, :appId, :sdkKey, :authToken, :expireOn
end
