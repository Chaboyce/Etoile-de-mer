# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Drop database..."
User.destroy_all
Categorie.destroy_all
Article.destroy_all
puts "databases dropped!"

puts "Creating user..."

charlotte = User.create(email: "charlotte770@hotmail.com",password: "philippine95", admin: true)

puts 'Done creating user'

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

navalo = Article.create!(name:"Port Navalo", categorie: sacs, price: 55, color: "Marine", description: "C'est la pièce phare de la collection Eté 2020 ! Porté épaule, ce sac assez grand et organisé pour y ranger nos essentiels facilement est imaginé, conçu et entièrement cousu en Bretagne. Ses petits boutons dorés et sa bandoulière unique et inédite complètent son look rétro et chic.", dimensions: "Hauteur :14 cm, Longueur :24 cm, Profondeur : 3,5cm, Bandoulière :120 cm ", matiere: "simili cuir (extérieur), cuir (passepoil) et soie (intérieure)", conseil: "de l'eau clair et du savon doux pour les petites tâches.")

puts 'Done creating articles'


puts 'Attaching photos to articles'

file_navalo=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167155/sac-entier_se2wk4.jpg")
navalo.avatar.attach(io: file_navalo, filename: 'navalo.jpg')
file_navalo=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167156/sac-presentation_zjfrql.jpg")
navalo.photos.attach(io: file_navalo, filename: 'navalo-pres.jpg')
file_navalo=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167156/sac-ouvert_xmbnxg.jpg")
navalo.photos.attach(io: file_navalo, filename: 'navalo-ouvert.jpg')
file_navalo=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167155/sacfinition_ryxvgb.jpg")
navalo.photos.attach(io: file_navalo, filename: 'navalo-finition.jpg')
file_navalo=URI.open("https://res.cloudinary.com/djuy4uxrd/image/upload/v1586167155/sac-interieur_oc8t3l.jpg")
navalo.photos.attach(io: file_navalo, filename: 'navalo-interieur.jpg')

puts 'Done attaching photos'
