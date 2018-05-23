# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Content.create(title: Faker::Book.title, description: Faker::Movie.quotes, views: Faker::Number.between(1,200), downloads: Faker::Number.between(1,200), is_public: Faker::Boolean.boolean)
end
