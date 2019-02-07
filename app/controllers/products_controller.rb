class ProductsController < ApplicationController
  def index
    @products = Product.all
    @photo = Photo.first
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def create

  end

end