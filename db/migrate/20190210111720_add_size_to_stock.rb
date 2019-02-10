class AddSizeToStock < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :size, :integer
  end
end
