class UsersController < ApplicationController

	def index
		@user = current_user.id
	end

	def show
		@user = current_user.id
	end
	
end