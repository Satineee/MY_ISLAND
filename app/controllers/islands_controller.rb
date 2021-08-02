class IslandsController < ApplicationController
  def index
    @islands = Island.All
  end

  def show
    @island = Island.find(params[:id])
  end
end
