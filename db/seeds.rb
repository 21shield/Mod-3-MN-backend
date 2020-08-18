# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Item.destroy_all

User.create([{username: "Maria"}, {username: "Nutella"}, {username:"Fran"}, {username:"Barbs"}, {username: "Alby"}, {username: "John"}])



imgArray = [Faker::LoremFlickr.image, Faker::LoremFlickr.image, Faker::LoremFlickr.image, Faker::LoremFlickr.image, Faker::LoremFlickr.image]

10.times {Item.create(
    {
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    image: imgArray.sample,
    description: Faker::Commerce.material,
    quantity: 10,
    category: Faker::Commerce.department(max: 5)
    }
)}



puts 'Done seeding'