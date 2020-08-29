class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :zip_code, null: false
      t.string :prefecuture, null: false
      t.string :city, null: false
      t.string :local, null: false
      t.string :building_name
      t.string :phone_number
      t.timestamps
    end
  end
end
