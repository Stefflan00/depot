class StoreController < ApplicationController

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end

  def index
    increment_counter
    @products = Product.paginate page: params[:page], per_page:10
    @cart = current_cart
  end
end
