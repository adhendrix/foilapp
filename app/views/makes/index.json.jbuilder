json.array!(@makes) do |make|
  json.extract! make, :id, :foil_make
  json.url make_url(make, format: :json)
end
