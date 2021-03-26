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



imgArray = [
    "https://static.zara.net/photos///2021/V/1/1/p/6899/710/102/22/w/563/6899710102_6_9_1.jpg?ts=1615308902710", 
    "https://static.zara.net/photos///2020/I/0/1/p/1856/208/800/2/w/696/1856208800_1_1_1.jpg?ts=1597396103817", 
    "https://static.zara.net/photos///2020/I/1/1/p/6103/610/032/2/w/1164/6103610032_1_1_1.jpg?ts=1597832474937", 
    "https://static.zara.net/photos///2020/I/1/1/p/3614/610/102/2/w/1164/3614610102_1_1_1.jpg?ts=1597738220736", 
    "https://static.zara.net/photos///2020/I/0/1/p/5802/109/800/2/w/1164/5802109800_6_1_1.jpg?ts=1597752942125",
    "https://static.zara.net/photos///2021/V/1/1/p/6901/710/102/2/w/563/6901710102_6_9_1.jpg?ts=1615308895671",
    "https://static.zara.net/photos///2021/V/0/1/p/1608/034/251/2/w/1280/1608034251_1_1_1.jpg?ts=1615286124908",
    "https://static.zara.net/photos///2021/V/0/1/p/1608/034/251/2/w/1280/1608034251_6_3_1.jpg?ts=1615396802098",
    "https://static.zara.net/photos///2021/V/0/1/p/7901/032/444/2/w/1280/7901032444_6_1_1.jpg?ts=1608037571054",
    "https://static.zara.net/photos///2021/V/0/1/p/7901/032/444/2/w/1280/7901032444_2_2_1.jpg?ts=1610558968306",
    "https://static.zara.net/photos///2021/V/0/1/p/2800/587/819/2/w/1280/2800587819_6_1_1.jpg?ts=1614704929604",
    "https://static.zara.net/photos///2021/V/0/1/p/5755/003/620/2/w/1280/5755003620_6_1_1.jpg?ts=1610534069717",
    "https://static.zara.net/photos///2021/V/0/1/p/2676/714/727/2/w/1280/2676714727_2_1_1.jpg?ts=1615374090032",
    "https://static.zara.net/photos///2021/V/0/1/p/2676/714/727/2/w/1280/2676714727_6_1_1.jpg?ts=1615368620158",
    "https://static.zara.net/photos///2021/V/0/1/p/8741/034/982/2/w/1280/8741034982_6_1_1.jpg?ts=1615388135455",
    "https://static.zara.net/photos///2021/V/1/1/p/2316/001/111/2/w/1280/2316001111_6_2_1.jpg?ts=1611152054611",
    "https://static.zara.net/photos///2021/V/1/1/p/3310/710/057/2/w/1280/3310710057_6_4_1.jpg?ts=1615278985658",
    "https://static.zara.net/photos///2021/V/1/1/p/3543/710/040/2/w/1280/3543710040_6_2_1.jpg?ts=1612967905283",
    "https://static.zara.net/photos///2021/V/1/1/p/6305/710/202/2/w/1280/6305710202_6_3_1.jpg?ts=1611171244917",
    "https://static.zara.net/photos///2021/V/0/1/p/0653/091/500/2/w/1280/0653091500_6_1_1.jpg?ts=1613571394935",
    "https://static.zara.net/photos///2021/V/0/1/p/4736/090/700/2/w/1280/4736090700_6_1_1.jpg?ts=1615375819189",
    "https://static.zara.net/photos///2021/V/0/1/p/3920/033/250/2/w/1280/3920033250_6_1_1.jpg?ts=1615375826482",
    "https://static.zara.net/photos///2021/V/0/1/p/8585/003/615/2/w/1280/8585003615_6_2_1.jpg?ts=1615375976575",
    "https://static.zara.net/photos///2020/V/0/1/p/3147/004/800/2/w/1280/3147004800_2_2_1.jpg?ts=1582723186641",

]

25.times {Item.create(
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