class UsersController < ApplicationController
  skip_before_action :login_user, only:[:new, :create]
  before_action :set_user, except:[:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
