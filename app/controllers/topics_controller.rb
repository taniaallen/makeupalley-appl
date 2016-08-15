class TopicsController < ApplicationController

	def index
		@topics = Topic.all
	end

	def show
		@topic = Topic.find(params[:id])
	end

	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(topic_params)
		if @topic.save
			redirect_to topics_url
		else
			redirect_to 'new'
		end
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update
		@topic = Topic.find(params[:id])
		if @topic.update(topic_params)
			redirect_to topic_path(@topic)
		else
			render 'edit'
		end
	end

	def destroy
		@topic.destroy
		redirect_to topics_path
	end


	private

	def topic_params
		params(:topic).permit(:title, :content)
	end
end