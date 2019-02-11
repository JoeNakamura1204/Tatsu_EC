class CartController < ApplicationController
  before_action :authenticate_user!
  def index
    @cart = params[:size]
  end

  def create
    cart_product = Stock.find_by(product_id: cart_params[:product_id], size: cart_params[:size],color: cart_params[:color])
    Cart.create(user_id:current_user.id,stock_id:cart_product.id,)
  end

  def destory

  end

  private

  def cart_params
    params.require(:cart).permit(:product_id,:size, :color, :amount)
  end

end
