class CreateClothings < ActiveRecord::Migration[5.0]
  def change
    create_table :clothings do |t|
      t.string :item
      t.string :colour
      t.string :category
      t.string :price
      t.integer :quantity

      t.timestamps
    end
  end
end
