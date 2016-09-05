class AddColourToCart < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :colour, :string
  end
end
