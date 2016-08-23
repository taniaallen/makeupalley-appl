class ReviewsController < ApplicationController
	before_action :find_product
	before_action :find_review, only: [:edit, :update, :destroy]

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
		# set the current product.id as the reference id to the new review when it is created.
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

	def edit
		# no longer need to define the Review.find statement because I assigned it to a private method and used the before_action at the top.
	end

	def update
		@review = Review.find(params[:id])
		if @review.update(review_params)
			redirect_to product_path(@product)
		else
			render 'edit'
		end
	end

	def destroy
		@review.destroy
		redirect_to product_path(@product)
	end




	private
	def review_params
		params.require(:review).permit(:title, :review, :rating)
	end

	# We want to find the current product we are on and set it to @product so that we can access the id in the review create action
	def find_product
		@product = Product.find(params[:product_id])
	end
	# Only use find_review for the edit, update and destroy actions
	def find_review
		@review = Review.find(params[:id])
	end
end