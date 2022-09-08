# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'destroying data base'
Restaurant.destroy_all
Review.destroy_all

puts 'creating restaurants'
10.times do
  r = Restaurant.create({
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  })
  puts "created restaurants #{r.id}"
end
puts 'done with restaus'

puts 'creating reviews'
10.times do
  review = Review.create!({
    content: Faker::Quote.matz,
    rating: [1, 2, 3, 4, 5].sample,
    restaurant_id: (1..10).to_a.sample
  })
  puts "review #{review.id} done"
end
puts "done"
