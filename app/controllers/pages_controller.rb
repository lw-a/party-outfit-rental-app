class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @outfits = Outfit.joins(:bookings).limit(3)
  end
end
