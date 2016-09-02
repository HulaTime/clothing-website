class CartController < ApplicationController
	
	def index
	end

	def new
	end

	def create
		Cart.create(cart_params)
	end

	private

	def cart_params
    params.require(:cart).permit(:item, :quantity, :price)
  end

end
