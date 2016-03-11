class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :foil_make

      t.timestamps null: false
    end
  end
end
