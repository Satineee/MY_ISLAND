class UsersController < ApplicationController

  def show
    @user = current_user
    @islands = @user.islands
    authorize @user
    @name = @user.email.split('@').first.capitalize
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(user_params)
    authorize @user
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end