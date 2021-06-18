# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
Disguise.destroy_all
User.destroy_all

puts "Creating Lists..."

user1 = User.create!(email: "bollack@edhec.com", password: "azerty")
user2 = User.create(email: "gasp@edhec.com", password: "azerty")
user3 = User.create!(email: "dubet@edhec.com", password: "azerty")
user4 = User.create!(email: "dez@edhec.com", password: "azerty")

disguise_1 = Disguise.new(title:"Aragorn",
                description:"Maraudeur, fils d'Arathorn, héritier du Gondor",
                price_per_day:70,
                category: "Fantastique",
                size: "L",
                gender: "Homme",
                address: "2 place de la république, Lille",
                user: user1)
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/91BoLtZHKsL._AC_SL1500_.jpg')
disguise_1.photo.attach(io: file, filename: 'aragorn.jpg', content_type: 'image/jpg')
disguise_1.save


disguise_2 = Disguise.new(title:"Frodon",
                description:"En provenance direct de CulDeSac au coeur de la Comté",
                price_per_day:50,
                category: "Fantastique",
                size: "M",
                gender: "Homme",
                address: "3Bis Place Sébastopol, Lille",
                user: user2)
file_2 = URI.open('https://static1.funidelia.com/497615-f4_big/deguisement-frodon-le-seigneur-des-anneaux.jpg')
disguise_2.photo.attach(io: file_2, filename: 'frodon.jpg', content_type: 'image/jpg')
disguise_2.save

disguise_3 = Disguise.new(title:"Crabe",
                description:"Crabe de mer, à l'aise dans l'eau et sur terre",
                price_per_day:25,
                category: "Animaux",
                size: "S",
                gender: "Mixte",
                address: "2 avenue de Bretagne, Lille",
                user: user3)
file_3 = URI.open('https://static.kiabi.com/images/deguisement-de-crabe-rouge-deguisement-homme-xq002_1_fcf1.jpg')
disguise_3.photo.attach(io: file_3, filename: 'crabe.jpg', content_type: 'image/jpg')
disguise_3.save

disguise_4 = Disguise.new(title:"Dalton",
                description:"Attention au boulet !",
                price_per_day:30,
                category: "Bandes-dessinées",
                size: "L",
                gender: "Homme",
                address: "4 rue de Béthune, Lille",
                user: user4)
file_4 = URI.open('https://cdn.deguisetoi.fr/images/rep_art/gra/311/3/311349/deguisement-dalton-homme-lucky-luke_311349.jpg')
disguise_4.photo.attach(io: file_4, filename: 'dalton.jpg', content_type: 'image/jpg')
disguise_4.save

disguise_5 = Disguise.new(title:"Dark Maul",
                description:"Rejoignez le côté obscur de la force",
                price_per_day:46,
                category: "Star-wars",
                size: "M",
                gender: "Homme",
                address: "4 rue du Court-Debout, Lille",
                user: user1)
file_5 = URI.open('https://www.deguizland.com/media/product/b0c/dark-maul-le-seigneur-sith-location-de-deguisement-adulte-dgzl-100249-de-non-2bb.jpg')
disguise_5.photo.attach(io: file_5, filename: 'dark_maul.jpg', content_type: 'image/jpg')
disguise_5.save

disguise_6 = Disguise.new(title:"Dark Vador",
                description:"Rejoignez le côté obscur de la force",
                price_per_day:53,
                category: "Star-wars",
                size: "L",
                gender: "Homme",
                address: "4 rue du Court-Debout, Lille",
                user: user2)
file_6 = URI.open('https://images-na.ssl-images-amazon.com/images/I/81RixRARLZL._AC_SL1500_.jpg')
disguise_6.photo.attach(io: file_6, filename: 'dark_vador.jpg', content_type: 'image/jpg')
disguise_6.save

disguise_7 = Disguise.new(title:"Gandalf",
                description:"Le plus grand magicien de la Terre du Milieu",
                price_per_day:68,
                category: "Fantastique",
                size: "S",
                gender: "Homme",
                address: "6 rue du Court-Debout, Lille",
                user: user3)
file_7 = URI.open('https://static1.funidelia.com/497623-f6_big2/deguisement-gandalf-le-seigneur-des-anneaux.jpg')
disguise_7.photo.attach(io: file_7, filename: 'gandalf.jpg', content_type: 'image/jpg')
disguise_7.save

disguise_8 = Disguise.new(title:"Gimli",
                description:"Mieux vaut être nain que mal accompagné",
                price_per_day:100,
                category: "Fantastique",
                size: "XXS",
                gender: "Homme",
                address: "10 rue du Court-Debout, Lille",
                user: user4)
file_8 = URI.open('https://images-na.ssl-images-amazon.com/images/I/41tk27dXxtL._AC_.jpg')
disguise_8.photo.attach(io: file_8, filename: 'gimli.jpg', content_type: 'image/jpg')
disguise_8.save

disguise_9 = Disguise.new(title:"Gollum",
                description:"Du poisson, bien goûtu, c'est délicieux",
                price_per_day:20,
                category: "Fantastique",
                size: "S",
                gender: "Mixte",
                address: "2 rue Nationale, Lille",
                user: user1)
file_9 = URI.open('https://lh3.googleusercontent.com/proxy/2TDznpOJx8j6Fp-7MsBy8YKbsm_xcQBACIV4sRq68MqqSJjV9rst0eqClm1ZS1GPYKXppFHu3whcgwJ1BCVt0niqHreinzNoneUa7i5q3pzyW9CQkZcOxy7O0IJ0')
disguise_9.photo.attach(io: file_9, filename: 'gollum.jpg', content_type: 'image/jpg')
disguise_9.save

puts "Finished!!😁"
