# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese")
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
Restaurant.create!(name: "Mario's Restaurant", address: "South ok NL", category: "belgian")
Restaurant.create!(name: "Oben's Sushi house", address: "in Germany somewhere...", category: "japanese")
Restaurant.create!(name: "Darius Pita", address: "Berlin!", category: "chinese")
