class CreateFoilItems < ActiveRecord::Migration
  def change
    create_table :foil_items do |t|
      t.integer :foil_used_length
      t.references :name, index: true, foreign_key: true
      t.references :make, index: true, foreign_key: true
      t.references :length, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
