class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def user_islands
    @user = User.find(params[:id])
    @islands = Island.where(user_id: @user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
