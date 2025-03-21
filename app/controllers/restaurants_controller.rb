class RestaurantsController < ApplicationController

def index
  @restaurants = Restaurant.all
end

def new
  @restaurant = Restaurant.new
end

def show
  @restaurant = Restaurant.find(params[:id])
  @reviews = Review.where(restaurant_id: params[:id])
  @review = Review.new
end

def create
  @restaurant = Restaurant.new(params_restaurant)
  if @restaurant.save
    redirect_to restaurant_path(@restaurant)
  else
    render :new, status: :unprocessable_entity
  end
end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end
