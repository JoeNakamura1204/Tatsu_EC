class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, null:false
      t.integer :number_items, null:false
      t.timestamps
    end
  end
end
