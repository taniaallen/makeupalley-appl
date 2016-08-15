class ProductsController < ApplicationController

	def index
		@user = current_user
		@products = Product.all

		puts @products
	end

	def show
		@user = current_user.id
		@product = Product.find(params[:id])
	end

	def new
		@user = current_user.id
		@product = Product.new
	end

	def create
		@user = current_user.id
		@product = Product.new(product_params)
		if @product.save
			redirect_to product_url(@product)
		else
			redirect_to product_new_url
		end
	end

	def edit
		@user = current_user
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)

			redirect_to product_url(@product)
		else
			redirect_to product_edit_url
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_url
	end


	private

	def product_params
		params.require(:product).permit(:name, :description, :img)
	end

# , :reviews_attributes => [:id, :title, :review, :rating, :_destroy, :user_id]  // old way to send reviews to products
end
