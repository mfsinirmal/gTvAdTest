class DeviceSerializer < ActiveModel::Serializer
  attributes :authToken, :expireOn
end
