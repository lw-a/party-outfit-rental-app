class OutfitsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_outfit, only: [:show]

  def index
    @outfits = Outfit.all
  end

  def show
    authorize @outfit
  end

  def new
    @outfit = Outfit.new
    authorize @outfit
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = @user
    authorize @outfit
    if @outfit.save
      redirect_to outfits_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @outfit
  end

  def update
    authorize @outfit
  end

  def destroy
    authorize @outfit
  end

  private

  def set_outfit
    @outfit = Outfit.find(params[:id])
  end

  def outfit_params
    params.require(:outfit).permit(:name, :color, :size, :price, :description, :category, :location)
  end
end
