class CreateFoilCalculators < ActiveRecord::Migration
  def change
    create_table :foil_calculators do |t|
      t.decimal :sheet_quantity
      t.decimal :sheets_per_parent_sheet
      t.decimal :inches_per_parent_sheet

      t.timestamps null: false
    end
  end
end
