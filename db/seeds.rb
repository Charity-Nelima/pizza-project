# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding pizzas..."
Restaurant.destroy_all
RestaurantPizza.destroy_all
Pizza.destroy_all

Pizza.create!([
 
  {
    id: 1, 
    name: "hawaiian pizza",
    ingredients: "pineapple,lotsa cheese, hams",
    
  },
  {
    id: 2,
    name: "chicken tikka pizza",
    ingredients: "chicken,crust",

},
  

 
])

puts "✅ Done seeding!"


puts "🌱 Seeding restaurants..."

# Spice Data from spicejungle.com
Restaurant.create!([
 
  {
    id: 1,
    name: "modern gallery",
    address: "Backstreet",
    
  },
  {
    id: 2,
    name: "caroline herinne",
    address: "Maseno",

}])

puts "🌱 Seeding retaurants..."


RestaurantPizza.create!([
 
  {
    restaurant_id: "1",
    pizza_id: "2",
    price:"20"
    
  },
  {
    restaurant_id: "1",
    pizza_id: "2",
    price:"25"
},

 
])

puts "✅ Done seeding!"

