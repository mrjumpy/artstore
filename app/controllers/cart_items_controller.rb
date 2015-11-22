class CartItemsController < ApplicationController
	before_action :authenticate_user!

	def update
		@cart = current_cart
		@item = @cart.cart_items.find_by(product_id: params[:id])
		if @item.product.quantity >= item_params[:quantity].to_i
			@item.update(item_params)
		else
			flash[:warning] = "數量不夠"
		end
		redirect_to carts_path

	end

	def destroy
		@cart = current_cart
		@item = @cart.cart_items.find_by(product_id: params[:id])
		@product = @item.product
		@item.destroy
		flash[:warning] = "成功將#{@product.title}刪除"
		redirect_to :back
	end

	private
	def item_params
		params.require(:cart_item).permit(:quantity)
	end
end
