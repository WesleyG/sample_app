class UsersController < ApplicationController

  # require signed in user for index, edit and update actions
  before_action :signed_in_user, only: [:index, :edit, :update]

  # require correct user for edit and update action
  before_action :correct_user,   only: [:edit, :update] 
  
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
    # the below is no longer required due to before_action at top
    #@user = User.find(params[:id])
  end

  def update
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def index
    # WG 04/13/2014 -- using paginate rather than all
    @users = User.paginate(page: params[:page])
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    # Before filters

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end