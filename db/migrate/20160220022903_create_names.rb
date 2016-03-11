class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :foil_name
      t.string :pigment_code

      t.timestamps null: false
    end
  end
end
