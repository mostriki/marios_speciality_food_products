Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.dish, cost: Faker::Number.between(1, 20), origin: Faker::Address.country)
end

Review.destroy_all

250.times do |index|
  product = products[Faker::Number.between(1, product_count)]
  product.reviews.create!( author: Faker::GameOfThrones.character, content: Faker::Lorem.characters(51), rating: Faker::Number.between(1, 5))
end

# Product.destroy_all
#
# product_count = 50
#
# products = (1..product_count).map do |index|
#   Product.create!(name: Faker::Food.dish, cost: Faker::Number.between(1, 20), origin: Faker::Address.country)
# end
#
# Review.destroy_all
#
# 250.times do |index|
#   product_index = Faker::Number.between(0, product_count-1)
#   product = products[product_index]
#   product.reviews.create!( author: Faker::GameOfThrones.character, content: Faker::Lorem.characters(51), rating: Faker::Number.between(1, 5))
# end
