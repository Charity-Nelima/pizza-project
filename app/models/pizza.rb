class Pizza < ApplicationRecord
   
    has_many :restaurants,  through: :restaurantpizzas

end
