Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.dish, cost: Faker::Number.decimal(2, 2), origin: Faker::Address.country)
end

Review.destroy_all

250.times do |index|
  Review.create!( author: Faker::GameOfThrones.character, content: Faker::Lorem.characters(51), rating: Faker::Number.between(1, 5), product_id: Faker::Number.between(1, 50))
end
