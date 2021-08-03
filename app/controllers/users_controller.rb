class UsersController < ApplicationController

  def show
    @user = current_user
    @islands = @user.islands
    authorize @user
  end
end