class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @island = Island.find(params[:island_id])
    @user = current_user
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @user = current_user
    @booking.island = @island
    @booking.user = @user
    @booking.total_price = find_price.to_i * @island.price
    @island.book = true
    authorize @booking
    if @booking.save
      redirect_to island_booking_path(@island, @booking)
    else
      render :new
    end
  end

  private

  def find_price
    Date.parse(booking_params[:end_date]) - Date.parse(booking_params[:start_date])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :island_id)
  end
end
