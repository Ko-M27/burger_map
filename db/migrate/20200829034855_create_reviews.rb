class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :nickname, null: false
      t.string :rate
      t.text :comment
      t.references :shop, foreign_key: true, null: false

      t.timestamps
    end
  end
end
