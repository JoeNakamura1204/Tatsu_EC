class RenamePhotoColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :photos, :photo
  end
end
