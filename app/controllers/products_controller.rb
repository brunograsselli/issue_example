class ProductsController < ApplicationController
  def index
    @products = Market::Product.all
  end
end
