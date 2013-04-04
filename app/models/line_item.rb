class LineItem < ActiveRecord::Base
  attr_accessible :product, :product_id
  belongs_to :product
  belongs_to :cart
  # attr_accessible :title, :body
  def total_price
  	product.price * quantity
  end
end
