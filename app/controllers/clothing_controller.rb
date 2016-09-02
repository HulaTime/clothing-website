class ClothingController < ApplicationController

	def index
		@cart = Cart.new
		@clothing = Clothing.all
	end

end
