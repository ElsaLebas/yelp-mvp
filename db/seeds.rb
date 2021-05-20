require 'faker'

puts "Cleaning DB"
Restaurant.destroy_all

puts "Creating 5 instances of Restaurants"
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  restaurant.save
  puts ">> #{restaurant.name} created"
end
