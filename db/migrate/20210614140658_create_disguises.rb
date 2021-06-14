class CreateDisguises < ActiveRecord::Migration[6.0]
  def change
    create_table :disguises do |t|
      t.string :title
      t.text :description
      t.integer :price_per_day
      t.string :category
      t.string :size
      t.string :gender
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
