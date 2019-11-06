require 'faker'

puts 'Cleaning database...'
Flat.destroy_all
puts "Creating flats..."

20.times do
  Flat.create!(
    name: Faker::JapaneseMedia::DragonBall.character,
    address: Faker::Nation.capital_city,
    description: Faker::Quote.most_interesting_man_in_the_world,
    price_per_night: (10..1000).to_a.sample,
    number_of_guests: (1..10).to_a.sample
  )
end
puts "...Finished creating flats"
