class ReviewsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
   def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_url(@review.restaurant_id)
    else
      redirect_to restaurant_url(@review.restaurant_id)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    restaurant_id = @review.restaurant_id
    @review.destroy
    redirect_to restaurant_url(restaurant_id)

  end



  private

  def review_params
    params.require(:review).permit(
      :body,
      :restaurant_id,
      :user_id
      )
  end
end
