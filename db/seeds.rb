# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dragon_hotpot = {name: "Mcdonalds", address: "China", category: "chinese"}
woodfire_pizza = { name: "Woodfire Pizza", address: "Milan", category: "italian" }
toast = {name: "Toast", address: "Paris", category: "french"}
sushi = {name: "Sushi", address: "Hokkaido", category: "japanese"}
beer = {name: "Beer", address: "Chocolate", category: "belgian"}
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
[dragon_hotpot, woodfire_pizza, toast, sushi, beer].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
