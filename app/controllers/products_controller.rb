class ProductsController < ApplicationController

 # before_filter :authenticate_user!, only: [:new, :create]
  def index
  	@products = Product.all
  end

  def about
  end 

  #  def show
  #   @product = Product.find(params[:id])
  #   # redirect_to '/'
  # end




end
   