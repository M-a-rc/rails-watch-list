class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @movie = Movie.find(params[:movie_id])
  end

  def create
    raise
    @review = Review.new(review_params)
    @review.movie = Movie.find(params[:movie_id])
    # if @review.save
    #   redirect_to
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
