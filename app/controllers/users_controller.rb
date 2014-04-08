class UsersController < ApplicationController
  
  def show
  	# retrieve user from database
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end
end
