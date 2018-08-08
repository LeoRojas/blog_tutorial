# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding data"

# article1 = Article.create(title: "Hello", text: "Hello Leonardo")
# article2 = Article.create(title: "Goodbye", text: "Goodbye Justin")

FactoryBot.create_list(:article, 10)
puts "Seeding ended"