class ChangColumnCartTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :stock_id
    add_reference :carts, :product
  end
end
