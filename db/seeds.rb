# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  new_resto = Restaurant.new(name: Faker::Movies::HitchhikersGuideToTheGalaxy.location, address: Faker::Address.street_address, category: Restaurant::CATEGORY.sample)
  new_resto.save
  new_review = Review.new(content: Faker::Quote.famous_last_words, rating: rand(0..5), restaurant_id: rand(1..5))
  new_review.save
end
