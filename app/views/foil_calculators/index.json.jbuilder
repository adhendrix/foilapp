json.array!(@foil_calculators) do |foil_calculator|
  json.extract! foil_calculator, :id, :sheet_quantity, :sheets_per_parent_sheet, :inches_per_parent_sheet
  json.url foil_calculator_url(foil_calculator, format: :json)
end
