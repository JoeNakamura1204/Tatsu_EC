class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.references :product, null:false
      t.integer :stock, default:0
      t.integer :color, default:0

      t.timestamps
    end
  end
end
