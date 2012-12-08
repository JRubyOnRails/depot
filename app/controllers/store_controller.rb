class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	if session[:kounter].nil?
  		session[:kounter] = 0
  	end
  	session[:kounter] = session[:kounter] + 1
  end
end
