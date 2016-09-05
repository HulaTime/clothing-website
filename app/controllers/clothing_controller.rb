class ClothingController < ApplicationController

	def index
		@cart = Cart.new
		@clothing = Clothing.all
	end

	def create
		Clothing.create(clothing_params)
		redirect_to '/clothing'
	end

	private

	def clothing_params
		params.require(:clothing).permit(:item, :quantity, :price, :colour)
	end

end
