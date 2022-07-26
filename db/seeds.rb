# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

user1 = User.create!(email: Faker::Internet.email,password:"123456")
user2 = User.create!(email: Faker::Internet.email, password:"123456")

10.times do
  surfboard = Surfboard.create!(city: Faker::Address.city, user:user1, price_day: rand(10..30), brand:Faker::Company.name, detail:"gg")
end

10.times do
  surfboard = Surfboard.create!(city: Faker::Address.city, user:user2, price_day: rand(10..30), brand:Faker::Company.name, detail: "ht")
end

# puts 'Creating 100 fake restaurants...'
# 100.times do
#   restaurant = Restaurant.new(
#     name:    Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     rating:  rand(0..5)
#   )
#   restaurant.save!
# end
# puts 'Finished!'
