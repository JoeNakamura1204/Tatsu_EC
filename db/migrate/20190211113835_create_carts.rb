class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :user, null:false
      t.references :stock, null:false
      t.integer :amount, null:false
      t.timestamps
    end
  end
end
