# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Content.create(title: Faker::Book.title, description: Faker::Movie.quote, views: Faker::Number.between(1,200), downloads: Faker::Number.between(1,200), is_public: Faker::Boolean.boolean)
end

10.times do
  Participation.create(content_id: Faker::Number.between(1,10), user_name: Faker::Name.name, is_recommend: Faker::Boolean.boolean, is_public: Faker::Boolean.boolean)
end
