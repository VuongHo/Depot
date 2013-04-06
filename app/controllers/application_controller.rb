class ApplicationController < ActionController::Base
  before_action :authorize
  protect_from_forgery

  

  protected
  def authorize
  	unless User.find_by_id(session[:user_id])
  		redirect_to login_url, notice: "Please log in"
  	end
  end

  private

    def set_cart
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
      @cart
    end
end
