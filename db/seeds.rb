# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding pizzas..."


Pizza.create!([
 
  {
    name: "hawaiian pizza",
    ingredients: "pineapple,lotsa cheese, hams",
    
  },
  {
    name: "chicken tikka pizza",
    ingredients: "chicken,crust",

},
  

 
])

puts "✅ Done seeding!"


puts "🌱 Seeding retaurants..."

# Spice Data from spicejungle.com
Restaurant.create!([
 
  {
    name: "modern gallery",
    address: "Backstreet",
    
  },
  {
    name: "caroline herinne",
    address: "Maseno",

},

puts "🌱 Seeding retaurants..."


RestaurantPizza.create!([
 
  {
    restaurant_id: "1",
    pizza_id: "2",
    price:"250"
    
  },
  {
    restaurant_id: "1",
    pizza_id: "2",
    price:"250"
},
  
  

 
])

puts "✅ Done seeding!"

