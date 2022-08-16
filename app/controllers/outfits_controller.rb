class OutfitsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = @user
    if @outfit.save
      redirect_to outfits_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name, :color, :size, :price, :description, :category, :location)
  end
end
