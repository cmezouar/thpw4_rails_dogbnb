# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Dog.destroy_all
DogSitter.destroy_all
City.destroy_all
Stroll.destroy_all

20.times do 
    city = City.create(name: Faker::Nation.capital_city)
    dog = Dog.create(name: Faker::Name.first_name, city: city)
    dog_sitter = DogSitter.create(name: Faker::Name.first_name, city: city)
    stroll = Stroll.create(date: DateTime.now, dog: dog, dog_sitter: dog_sitter, city: city)
end

puts "20 entries created"