json.array!(@foil_items) do |foil_item|
  json.extract! foil_item, :id, :foil_used_length, :name_id, :make_id, :length_id
  json.url foil_item_url(foil_item, format: :json)
end
