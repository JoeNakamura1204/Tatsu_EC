class RenamePhotoColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :photo, :photos
  end
end
