class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(outfit_id: params[:outfit_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.outfit = Outfit.find(params[:outfit_id])
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end
end
