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
    binding.pry

  end


end

