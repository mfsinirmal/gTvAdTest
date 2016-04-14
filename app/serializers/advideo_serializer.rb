class AdvideoSerializer < ActiveModel::Serializer
  attributes :id, :video_url, :hls_url
end
