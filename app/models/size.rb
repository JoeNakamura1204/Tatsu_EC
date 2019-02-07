class Size < ApplicationRecord
  belongs_to :product

  enum size: { "S": 0, "M": 1, "L": 2, "XL": 3 }
end
