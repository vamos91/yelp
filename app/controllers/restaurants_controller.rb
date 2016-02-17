class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurant_param)
    @restaurants.save
    redirect_to restaurants_path
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end


  private

  def restaurant_param
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
