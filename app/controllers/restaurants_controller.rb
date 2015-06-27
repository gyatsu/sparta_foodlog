class RestaurantsController < ApplicationController
  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end


private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :tel,
      :address,
      :url
      )
  end


end
