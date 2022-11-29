class RestaurantsController < ApplicationController

  def index 
    restaurants = Restaurant.all
    render json:restaurants
  end

  def show
    restaurant = find_restaurant
    render json:restaurant
  end



def find_restaurant
  Restaurant.find(params[:id]) 
end


#   def restaurant_params
# params.permit(:name,:address)  
# end


end
