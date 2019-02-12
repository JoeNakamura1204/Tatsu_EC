class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses
  has_many :carts
  has_many :order_items
  has_many :orders
  before_create :build_default_profile

  enum sex: { "男": 0, "女": 1 }

  private

  def build_default_address
    build_address
    true
  end
end
