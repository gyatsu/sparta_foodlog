class ReviewsController < ApplicationController
   def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_url(@review.restaurant_id)
    else
      redirect_to review_url(@review.restaurant_id)
    end
  end



  private

  def review_params
    params.require(:review).permit(:body, :restaurant_id)
  end
end
