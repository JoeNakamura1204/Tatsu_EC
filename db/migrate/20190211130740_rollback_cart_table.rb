class RollbackCartTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :product_id
    add_reference :carts, :stock
  end
end
