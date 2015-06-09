class IslandsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@islands = Island.all
	end

	def show
		@island = Island.where(name: params[:id])

	end


end
