class OutfitsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @outfits = policy_scope(Outfit)
    if params[:q].present?
      ## WITH PGSEARCH
      @outfits = Outfit.search_(params[:q])
    end

    # The `geocoded` scope filters only outfits with coordinates
    @markers = @outfits.geocoded.map do |outfit|
      {
        lat: outfit.latitude,
        lng: outfit.longitude,
        info_window: render_to_string(partial: "info_window", locals: { outfit: })
      }
    end
  end

  def show
    @outfit = Outfit.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    authorize @outfit

    @markers = [{
      lat: @outfit.geocode[0],
      lng: @outfit.geocode[1],
      info_window: render_to_string(partial: "info_window", locals: { outfit: @outfit })
    }]
  end

  def new
    @outfit = Outfit.new
    authorize @outfit
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    authorize @outfit
    if @outfit.save
      redirect_to owner_bookings_path
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

  def outfit_params
    params.require(:outfit).permit(:name, :color, :size, :price, :description, :category, :address, photos: [])
  end
end
