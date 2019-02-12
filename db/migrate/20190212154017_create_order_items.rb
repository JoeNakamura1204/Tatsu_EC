class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :user
      t.references :order
      t.references :stock
      t.integer :amount
      t.timestamps
    end
  end
end