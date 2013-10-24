class ChargesController < ApplicationController
end

def new
end

def create
	@amount = 1000

	customer =  Stripe::Customer.create(
	  :email => 'example@stripe.com',
	  :card  => params[:stripToken]
	)

	charge = Stripe::Charge.create(
	  :customer => customer.id,
	  :amoubt => @amount,
	  :description => 'Rails Stripe customer',
	  :currency => 'GBP'
	  )
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end