class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  # attr_accessible :title, :body
  def total_price
  	product.price * quantity
  end
end
