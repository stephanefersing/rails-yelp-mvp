# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "512345", category: 'french' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "512345", category: 'italian' }
pizza_east2 =  { name: "Pizza East2", address: "56AB Shoreditch High St, London E1 6PQ", phone_number: "512345", category: 'italian' }
dishoom2 = { name: "Dishoom2", address: "7 Boundary", phone_number: "512", category: 'french' }
mcdo = { name: "mcdo", address: "7 Boundary", phone_number: "512", category: 'belgian' }

[ dishoom, pizza_east, pizza_east2, dishoom2, mcdo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "finished"
