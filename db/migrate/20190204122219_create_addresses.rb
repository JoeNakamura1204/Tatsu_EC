class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.references :user, null:false
      t.text :postcode,null:false
      t.text :address, null:false
      t.timestamps
    end
  end
end
