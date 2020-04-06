# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Drop database..."
Article.destroy_all
puts "databases dropped!"

puts "Creating articles..."
navalo = Article.new(name:"Port Navalo Marine", categorie: "Sacs", price: 55)
