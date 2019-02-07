class ProductController < ApplicationController
  def index
    @products = Product.all
    @photo = Photo.first
  end
end
