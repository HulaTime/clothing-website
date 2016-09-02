class ClothingController < ApplicationController

	def index
		@clothing = Clothing.all
	end

end
