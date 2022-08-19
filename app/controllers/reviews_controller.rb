class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @outfit = Outfit.find(params[:outfit_id])
    @review.outfit = @outfit
    authorize @review
    if @review.save
      redirect_to outfit_path(@outfit)
    else
      redirect_to outfit_path(@outfit), status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
