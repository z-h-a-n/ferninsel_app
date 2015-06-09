class UserIslandController < ApplicationController
	def show
    @island = Island.find(params[:id])
    @user = User.find(params[:user_id])
	end

  def create

  end

  def destroy
    
  end


end
