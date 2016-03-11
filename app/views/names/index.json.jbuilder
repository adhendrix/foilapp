json.array!(@names) do |name|
  json.extract! name, :id, :foil_name, :pigment_code
  json.url name_url(name, format: :json)
end
