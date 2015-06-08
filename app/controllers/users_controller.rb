class UsersController < ApplicationController
	def index
		@new_user = User.all.last[:name]
	end

	def new
		@user = User.new
	end

	def create
		if User.all.map(&:name).include? params[:user][:name]
			render 'show'
		else
			@user = User.new params[:user].permit(:name)
			@user.save
			redirect_to users_path
		end
	end

	def show
		@user = User.find(params[:id])

	end

end
