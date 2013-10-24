class ProductsController < ApplicationController

 # before_filter :authenticate_user!, only: [:new, :create]
  def index
  	@products = Product.all
  end

  def new
  	@product =  Product.new
  end 

   def show
    @product = Product.find(params[:id])
    # redirect_to '/'
  end


  def create
  	@product = Product.create(params[:product].permit(:name, :image))

  	redirect_to @product
  end 



end
   