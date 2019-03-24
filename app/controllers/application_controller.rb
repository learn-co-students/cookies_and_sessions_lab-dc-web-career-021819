class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def add_to_cart
    @current_cart = session[:cart] || []
  end

  def add_item_to_cart
    cart = session[:cart] || []
    cart << params[:product]
    session[:cart] = cart
    redirect_to cart_path
  end

  def cart
    session[:cart] ||= []
  end
end
