class CartController < ApplicationController
	
	def index
		@cart = Cart.all
	end

	def new
	end

	def create
		Cart.create(cart_params)
		redirect_to clothing_index_path
	end

	def destroy
		d_item = Cart.find(params[:id])
    d_item.destroy if d_item.quantity == 1
    d_item.update(quantity: d_item.quantity - 1) if d_item.quantity > 1
    flash[:notice] = 'Item removed'
		redirect_to cart_index_path
	end

	private

	def cart_params
    a = params.require(:cart).permit(:item, :price, :colour)
    b = params.require(:quantity)
    a.merge({quantity: b})
  end

end
