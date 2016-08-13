class ProductsController < ApplicationController

	def index
		@user = current_user
		@products = Product.all

		puts @products
	end

	def show
		@user = current_user
		@product = Product.find(params[:id])
	end


end
