class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizzas_params)
        render json: Pizza.find(restaurant_pizza.pizza_id)
    end

    private

    def restaurant_pizzas_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end 

    
end
