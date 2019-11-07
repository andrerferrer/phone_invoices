# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all"
PhoneCall.destroy_all

puts "Creating seeds"
10.times do
	start_at = Time.now + rand(3600..36_000)
  params = {
    called: '21 98854-1230',
    caller: '21 2440-1230',
    start_at: start_at,
    end_at: start_at + rand(59..3600)
  }
  PhoneCall.create!(params)
end
puts "Seed complete"