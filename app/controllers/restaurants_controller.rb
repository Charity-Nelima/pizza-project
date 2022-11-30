class RestaurantsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        render json: Restaurant.all, except: [:created_at, :updated_at]
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, include: :pizzas, except: [:created_at, :updated_at]
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    end

    private

    def render_not_found_response
        render json: {error: "Restaurant not found"}, status: :not_found
    end


# private

# def restaurant_params
#   Restaurant.find(params[:id]) 
# end


#   def restaurant_params
# params.permit(:name,:address)  
# end


end
