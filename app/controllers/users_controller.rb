class UsersController < ApplicationController
  
  def show
  	# retrieve user from database
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      # provide success message
      flash[:success] = "Welcome to the Sample App!"
      # handle a successful save by redirecting to user page
      # combination of redirect and @user elimates need for user_url
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end