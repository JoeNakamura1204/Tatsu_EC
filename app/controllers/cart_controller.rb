class CartController < ApplicationController
  before_action :authenticate_user!
  def index
    @carts = Cart.where(user_id: current_user.id)
  end

  def create
    cart_product = Stock.find_by(product_id: cart_params[:product_id], size: cart_params[:size], color: cart_params[:color])
    cart = Cart.new(user_id: current_user.id, stock_id: cart_product.id, amount: cart_params[:amount])
    if cart.save
      render :index
    else
      flash[:alert] = "size, color, amount　を入力してください"
      redirect_to product_path(cart_product.product)
    end

  end

  def destory
  end

  private

  def cart_params
    params.require(:cart).permit(:product_id,:size, :color, :amount)
  end
end