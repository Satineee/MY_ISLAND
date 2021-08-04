class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def new
    @owner = current_user
    @new_island = Island.new
    authorize @new_island
  end

  def create
    @owner = current_user
    @new_island = Island.new(island_params)
    @new_island.user = @owner
    authorize @new_island
    if @new_island.save
      redirect_to island_path(@new_island)
    else
      render 'new'
    end
  end

  def index
    # @islands = Island.all
    @islands = policy_scope(Island).order(created_at: :desc)

    @markers = @islands.geocoded.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        info_window: render_to_string(partial: "info_window", locals: { island: island })
      }
    end
  end

  def show
    @island = Island.find(params[:id])
    authorize @island
  end

  def edit
    @island = Island.find(params[:id])
    authorize @island
  end

  def update
    @island = Island.find(params[:id])
    authorize @island
    if @island.update(island_params)
      redirect_to island_path(@island)
    else
      render 'edit'
    end
  end

  def destroy
    @island = Island.find(params[:id])
    @island.destroy
    authorize @island
    redirect_to islands_path
  end

  private

  def island_params
    params.require(:island).permit(:name, :price, :location, :description)
  end
end
