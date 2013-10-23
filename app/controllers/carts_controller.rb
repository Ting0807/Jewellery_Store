class CartsController < ApplicationController
	  def update
	  	 product = Product.find params[:cart][:product_id]
	  	 # joined database

	  	 current_cart.products << product

	  	 redirect_to product_path(product)
	   end


	   def show
	    # @cart= Cart.current_cart
	    # current_cart
       end 
end	   	 