class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skills = @user.skills
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the TimeRecord!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
