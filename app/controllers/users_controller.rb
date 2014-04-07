class UsersController < ApplicationController
  
  def show
  	# retrieve user from database
  	@user = User.find(params[:id])
  end

  def new
  end
end
