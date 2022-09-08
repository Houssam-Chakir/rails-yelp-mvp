class RestaurantsController < ApplicationController
  # before_action
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new(restaurant_params)
  end

  def create
  end

  private

  def restaurant_params
    params.require(:restaurants).permit(:name, :address, :phone_number, :category)
  end
end
