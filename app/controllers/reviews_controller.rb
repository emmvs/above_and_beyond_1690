class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @review.restaurant = @restaurant
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new, notice: 'Something went wrong 😭', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end

  def review_params
    # Never trust the users (so no id here, only user input)
    params.require(:review).permit(:content, :username)
  end
end
