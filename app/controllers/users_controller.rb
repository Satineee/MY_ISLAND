class UsersController < ApplicationController

  def show
    @user = current_user
    @islands = @user.islands
    authorize @user
    @name = @user.email.split('@').first.capitalize
  end
end