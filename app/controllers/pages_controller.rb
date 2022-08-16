class PagesController < ApplicationController
  def home
    @outfits = Outfit.all
  end
end
