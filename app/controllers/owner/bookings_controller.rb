class Owner::BookingsController < ApplicationController
  def index
    @bookings = policy_scope([:owner, Booking])
    @outfits = Outfit.where(user: current_user)
  end
end
