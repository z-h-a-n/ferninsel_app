class UserIslandController < ApplicationController
	def show
  	@island = Island.find(params[:id])
  	@user = User.find(params[:user_id])
    if !@user.islands.include? @island
      # add the island to the user
      @user.islands << @island
    end
	end

  def destroy
    island = UserIsland.where(island_id: params[:id]) && UserIsland.where(user_id: params[:user_id])
    island.first.destroy
    redirect_to user_path(params[:user_id])
  end
end

