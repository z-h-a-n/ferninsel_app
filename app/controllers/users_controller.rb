class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		if User.all.map(&:name).include? params[:user][:name]
			redirect_to user_path(User.where(name: params[:user][:name]).first[:id])
		else
			@user = User.new params[:user].permit(:name)
			@user.save
			@new_user = User.all.last
			render 'create'
		end
	end

	def show
		@user = User.find(params[:id])
		@islands = Island.all
		if request.xhr? 
			render json: @user.islands
		end
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to new_user_path
	end
end
