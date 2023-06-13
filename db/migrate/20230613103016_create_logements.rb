class CreateLogements < ActiveRecord::Migration[7.0]
  def change
    create_table :logements do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :surface
      t.integer :rooms
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
