class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(outfit_id: params[:outfit_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @outfit = Outfit.find(params[:outfit_id])
    @booking.outfit = @outfit
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to root_path
    else
      redirect_to outfit_path(@outfit), status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :outfit_id)
  end
end
