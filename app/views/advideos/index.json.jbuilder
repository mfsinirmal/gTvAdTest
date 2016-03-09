json.array!(@advideos) do |advideo|
  json.extract! advideo, :id
  json.url advideo_url(advideo, format: :json)
end
