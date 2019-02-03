class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, default: "", limit:100
    add_column :users, :sex, :integer, null: false, default: 0
    add_column :users, :number, :integer, null: false, default: 0
  end
end
