class Product < ApplicationRecord
  belongs_to :category

  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON
end
