json.array!(@lengths) do |length|
  json.extract! length, :id, :foil_length
  json.url length_url(length, format: :json)
end
