class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@cart = set_cart
  end
end
