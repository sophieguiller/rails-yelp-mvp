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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "02928374647", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "93726482618", category: "italian" }
pink_mamma = { name: "Pink Mamma", address: "10 rue Pierre Fontaine, Paris", phone_number: "02928374647", category: "italian" }
bouillon =  { name: "Bouillon", address: "Place Pigalle, Paris", phone_number: "93726482618", category: "french" }
au_bon_coin = { name: "Au Bon Coin", address: "37 rue Lemercier, Paris", phone_number: "02928374647", category: "belgian" }

[ dishoom, pizza_east, pink_mamma, bouillon, au_bon_coin ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
