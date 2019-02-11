class Product < ApplicationRecord
  belongs_to :category
  has_many :stocks

  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON
end
