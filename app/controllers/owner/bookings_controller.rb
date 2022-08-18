class Owner::BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    authorize @bookings
    @outfits = Outfit.where(user: current_user)
  end
end
