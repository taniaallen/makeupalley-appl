class CommentsController < ApplicationController
	before_action :find_topic
	before_action :find_comment, only: [:edit, :update, :destroy]

	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
	end
	
	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.topic_id = @topic.id

		if @comment.save
			redirect_to topic_path(@topic)
		else
			redirect_to 'new'
		end
	end

	def edit
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update(comment_params)
			redirect_to topic_path(@topic)
		else
			render 'edit'
		end
	end

	def destroy
		@comment.destroy
		redirect_to topic_path(@topic)
	end


	private

	def comment_params
		params.require(:comment).permit(:comment, :user_id)
	end

	def find_topic
		@topic = Topic.find(params[:topic_id])
	end

	def find_comment
		@comment = Comment.find(params[:id])
	end
end