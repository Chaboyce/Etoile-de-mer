# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Drop database..."
Categorie.destroy_all
Article.destroy_all
puts "databases dropped!"

puts "Creating categories..."
sacs = Categorie.create!(name:"Sacs")
kimonos = Categorie.create!(name:"Kimonos")
hauts = Categorie.create!(name:"Hauts")
robes = Categorie.create!(name:"Robes")
puts 'Done creating categories'

puts 'Attaching photos to categories'
file_sacs=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167156/sac-presentation_zjfrql.jpg")
sacs.photo.attach(io: file_sacs, filename: 'sacs.jpg')
file_kimonos=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167135/kimono-zoom_lmhxeo.jpg")
kimonos.photo.attach(io: file_kimonos, filename: 'kimonos.jpg')
file_hauts=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167114/haut-croise%CC%81_njtrj9.jpg")
hauts.photo.attach(io: file_hauts, filename: 'hauts.jpg')
file_robes=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586186436/robe1_wtshoj.png")
robes.photo.attach(io: file_robes, filename: 'robes.jpg')
puts 'Done attaching categories'


puts "Creating articles..."

navalo = Article.create!(name:"Port Navalo", categorie: sacs, price: 55, color: "Marine", description: "C'est la pièce phare de la collection Eté 2020 ! Porté épaule, ce sac assez grand et organisé pour y ranger nos essentiels facilement est imaginé, conçu et entièrement cousu en Bretagne. Ses petits boutons dorés et sa bandoulière unique et inédite complètent son look rétro et chic.")

puts 'Done creating articles'


puts 'Attaching photos to articles'

file_navalo=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167155/sac-entier_se2wk4.jpg")
navalo.photo.attach(io: file_navalo, filename: 'navalo.jpg')

puts 'Done attaching photos'
