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

User.create([
    {username: "Maria"}, {username: "Nutella"}, {username:"Fran"}, {username:"Barbs"}, {username: "Alby"}, {username: "John"},{username:"Karem"}, {username: "Kevin"}, {username: "James"},{username:"21shield"}, {username: "Carrot"},{username: "peawarrior"}
    ])



imgArray = ["https://static.zara.net/photos///2020/I/0/1/p/7969/236/064/2/w/1730/7969236064_1_1_1.jpg?ts=1597406729010", "https://static.zara.net/photos///2020/I/0/1/p/1856/208/800/2/w/696/1856208800_1_1_1.jpg?ts=1597396103817", "https://static.zara.net/photos///2020/I/1/1/p/6103/610/032/2/w/1164/6103610032_1_1_1.jpg?ts=1597832474937", "https://static.zara.net/photos///2020/I/1/1/p/3614/610/102/2/w/1164/3614610102_1_1_1.jpg?ts=1597738220736" , "https://static.zara.net/photos///2020/I/0/1/p/5802/109/800/2/w/1164/5802109800_6_1_1.jpg?ts=1597752942125"]

20.times {Item.create(
    {
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    image: imgArray.sample,
    description: Faker::Commerce.material,
    quantity: 10,
    category: Faker::Commerce.department(max: 8)
    }
)}



puts 'Done seeding'