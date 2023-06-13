# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Définition des catégories
categories = ['appartement', 'maison']

# Génération de 10 utilisateurs aléatoires
10.times do
  User.create(
    email: Faker::Internet.email
  )
end

# Récupération de tous les utilisateurs
users = User.all

# Génération de 10 logements liés à des utilisateurs aléatoires
10.times do
  Logement.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    price: Faker::Number.between(from: 1000, to: 5000),
    surface: Faker::Number.between(from: 50, to: 200),
    rooms: Faker::Number.between(from: 1, to: 5),
    category: categories.sample,
    user: users.sample
  )
end