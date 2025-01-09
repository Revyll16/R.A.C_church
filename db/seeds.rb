require 'faker'
puts Faker::Name.name


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

puts "Cleaning up database..."
Member.destroy_all
Sermon.destroy_all
Event.destroy_all
Ministry.destroy_all
PrayerRequest.destroy_all
Donation.destroy_all
puts "Database cleaned!"

puts "Seeding data..."

# Members
30.times do |i|
  Member.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    role: ["Pastor", "Responsible", "Chorale Member"].sample
  )
end
puts "Created #{Member.count} members!"

# Sermons
30.times do |i|
  Sermon.create!(
    title: Faker::Lorem.sentence(word_count: 4),
    date: Faker::Date.backward(days: 365),
    video_url: "https://www.youtube.com/watch?v=#{SecureRandom.hex(4)}"
  )
end
puts "Created #{Sermon.count} sermons!"

# Events
30.times do |i|
  start_date = Faker::Time.forward(days: 90, period: :evening)
  end_date = Faker::Time.forward(days: 90, period: :night)

  # Ensure that end_date is after start_date
  end_date = start_date + rand(1..5).days

  Event.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph,
    location: Faker::Address.city,
    start_date: start_date,
    end_date: end_date
  )
end
puts "Created #{Event.count} events!"



# Ministries
30.times do |i|
  Ministry.create!(
    name: "#{Faker::Educator.subject} Ministry",
    description: Faker::Lorem.paragraph,
    leader_name: Faker::Name.name
  )
end
puts "Created #{Ministry.count} ministries!"


# Prayer Requests
30.times do |i|
  PrayerRequest.create!(
    name: [Faker::Name.name, "Anonymous"].sample,
    email: Faker::Internet.email,
    message: Faker::Lorem.paragraph,
    anonymous: [true, false].sample
  )
end
puts "Created #{PrayerRequest.count} prayer requests!"

# Donations
30.times do |i|
  Donation.create!(
    amount: Faker::Commerce.price(range: 10.0..500.0),
    frequency: ["One-time", "Monthly", "Yearly"].sample,
    message: Faker::Lorem.sentence
  )
end
puts "Created #{Donation.count} donations!"

puts "Database seeding completed!"
