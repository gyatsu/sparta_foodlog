class RestaurantsController < ApplicationController
  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if  @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end


  def update
  end

  def show
    @restaurant = Restaurant.find(params[:id])
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
