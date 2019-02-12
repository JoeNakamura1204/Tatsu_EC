class Cart < ApplicationRecord
  belongs_to :stock
  belongs_to :user

  validates :amount, presence: true
  validates :stock_id, presence: true
end
