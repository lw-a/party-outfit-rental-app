class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @outfit = Outfit.find(params[:outfit_id])
    @booking.outfit = @outfit
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to outfit_path(@outfit), status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to owner_bookings_path
    else
      redirect_to owner_bookings_path, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :status)
  end
end
