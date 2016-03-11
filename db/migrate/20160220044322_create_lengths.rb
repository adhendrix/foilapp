class CreateLengths < ActiveRecord::Migration
  def change
    create_table :lengths do |t|
      t.string :foil_length

      t.timestamps null: false
    end
  end
end
