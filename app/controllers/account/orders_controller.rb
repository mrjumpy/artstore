class Account::OrdersController < ApplicationController
	before_action :authenticate_user!
	def index
		@orders = current_user.orders.order("id DESC")
	end

	def show
		@orders = current_user.orders.find_by(params[:id])
	end

end
