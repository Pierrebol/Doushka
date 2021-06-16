# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts "Cleaning database..."
Disguise.destroy_all
User.destroy_all

puts "Creating Lists..."

user1 = User.create!(email: "bollack@edhec.com", password: "azerty")
user2 = User.create!(email: "gasp@edhec.com", password: "azerty")
user3 = User.create!(email: "dubet@edhec.com", password: "azerty")
user4 = User.create!(email: "dez@edhec.com", password: "azerty")

10.times do
  disguise = Disguise.new(
  title: [Faker::Creature::Animal.name, Faker::Fantasy::Tolkien.character, Faker::Games::Pokemon.name].sample,
  description: ["Super Etat", "Bon Etat", "Etat Moyen", "Mauvais Etat", "Très Mauvais Etat"].sample,
  price_per_day: [30, 70, 10, 100, 50].sample,
  category: Faker::Fantasy::Tolkien.race,
  size: ["XL", "L", "M", "S"].sample,
  gender: ["Homme", "Femme", "Unisex", "Enfant"].sample,
  address: '16 Villa Gaudelet, Paris'
  )
  disguise.user = [user1, user2, user3, user4].sample
  disguise.save!
end
puts "Finished!!😁"
