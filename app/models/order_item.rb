class OrderItem < ApplicationRecord
  belongs_to :user
  belongs_to :stock
  belongs_to :order
end
