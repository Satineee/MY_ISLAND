class IslandsController < ApplicationController
  def index
    @islands = Island.All
  end

  def show
    @island = Island.find(params[:id])
  end
  
  def new
    @owner = User.find(params[:user_id])
    @new_island = Island.new
  end

  def create
    @owner = User.find(params[:user_id])
    @new_island = Island.new(island_params)
    @new_island.user = @owner
    if @new_island.save
      redirect_to island_path(@new_island)
    else
      render 'new'
    end
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    if @island.update(params[:id])
      redirect_to island_path(@island)
    else
      render 'edit'
    end
  end

  private

  def island_params
    params.require(:island).permit(:name, :price, :location, :description)
  end
end
