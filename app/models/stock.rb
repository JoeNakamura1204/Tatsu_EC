class Stock < ApplicationRecord
  belongs_to :product
  has_many :carts

  validates :product_id, uniqueness:{scope: [:size, :color]}

  enum size: {
      "S":0,
      "M":1,
      "L":2,
      "XL":3,
  }
  enum color: {
      "Black":0,
      "White":1,
      "Grey":2,
      "Red":3,
      "Blue":3,
  }

end
