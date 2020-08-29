class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.text :text
      t.string :gmap
      t.references :user, foreign_key: true, null: false
      t.references :address, foreign_key: true, null: false

      t.timestamps
    end
  end
end
