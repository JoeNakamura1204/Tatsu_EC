class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.references :products
      t.integer :size
      t.integer :stock
      t.timestamps
    end
  end
end