class ReviewsController < ApplicationController
	before_action :find_product

	def index
		@reviews = Review.all
	end

	def show
		@review = Review.find(params[:id])
	end

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.product_id = @product.id

		# set the user_id under the review model to the current_user that is signed in.
		@review.user_id = current_user.id
		
		# if the review saves, redirect to the product show page, else redirect to the new form.
		if @review.save
			redirect_to product_path(@product)
		else
			redirect_to 'new'
		end
	end


	private
	def review_params
		params.require(:review).permit(:title, :review, :rating)
	end

	# We want to find the current product we are on and set it to @product so that we can access the id in the review create action
	def find_product
		@product = Product.find(params[:product_id])
	end
	
end