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

# db/seeds.rb

puts "Cleaning up database..."
# Delete all records to ensure no duplication
Member.destroy_all
Sermon.destroy_all
Event.destroy_all
Ministry.destroy_all
PrayerRequest.destroy_all
Donation.destroy_all
puts "Database cleaned!"

# Seeding default data
puts "Seeding default data..."

# Example data for initial setup

# Members
members_data = [
  { name: "John Doe", email: "john.doe@example.com", phone: "123-456-7890", role: "Pastor" },
  { name: "Jane Smith", email: "jane.smith@example.com", phone: "234-567-8901", role: "Responsible" },
  { name: "Michael Brown", email: "michael.brown@example.com", phone: "345-678-9012", role: "Chorale Member" },
  { name: "Emily Davis", email: "emily.davis@example.com", phone: "456-789-0123", role: "Pastor" },
  { name: "Chris Johnson", email: "chris.johnson@example.com", phone: "567-890-1234", role: "Responsible" },
  { name: "Sarah Wilson", email: "sarah.wilson@example.com", phone: "678-901-2345", role: "Chorale Member" },
  { name: "David Taylor", email: "david.taylor@example.com", phone: "789-012-3456", role: "Responsible" },
  { name: "Anna Miller", email: "anna.miller@example.com", phone: "890-123-4567", role: "Chorale Member" }
]

members_data.each do |member|
  Member.create!(member)
end

puts "Created #{Member.count} members!"


# Sermons
sermons = [
  { title: "Walking by Faith, Not by Sight", date: "2023-01-08", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "The Power of Trusting God's Plan", date: "2023-01-15", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Overcoming Fear with Faith", date: "2023-01-22", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Living in Assurance of God's Promises", date: "2023-01-29", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Loving God and Loving People", date: "2023-02-05", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "The Transforming Power of God's Love", date: "2023-02-12", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Showing Compassion in a Hurting World", date: "2023-02-19", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Unity Through Love", date: "2023-02-26", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "The Purpose and Power of Prayer", date: "2023-03-05", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Drawing Near to God in Quiet Moments", date: "2023-03-12", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Praying Bold Prayers", date: "2023-03-19", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Growing in the Fruits of the Spirit", date: "2023-03-26", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Victory Over Temptation", date: "2023-04-02", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Finding Strength in the Storms of Life", date: "2023-04-09", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "God’s Peace in Troubled Times", date: "2023-04-16", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Breaking Free from Chains of Sin", date: "2023-04-23", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Answering God’s Call in Your Life", date: "2023-04-30", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Living a Life of Purpose", date: "2023-05-07", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "The Great Commission: Sharing Your Faith", date: "2023-05-14", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Serving Others with a Christlike Heart", date: "2023-05-21", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "A Heart of Gratitude", date: "2023-05-28", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "The Joy of Worship", date: "2023-06-04", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Giving Thanks in All Circumstances", date: "2023-06-11", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"},
  { title: "Living a Lifestyle of Praise", date: "2023-06-18", video_url: "https://www.youtube.com/watch?v=c_VyjZTR5VM"}
]

sermons.each do |sermon|
  Sermon.create!(sermon)
end
puts "Sermons seeded: #{Sermon.count}"

# Events
events = [
  { title: "Sunday Worship Service", description: "Join us for worship and fellowship every Sunday.", date: "2023-01-08 10:00:00" },
  { title: "Youth Bible Study", description: "Bible study session for our youth group.", date: "2023-01-11 18:00:00" }
]

events.each do |event|
  Event.create!(event)
end
puts "Events seeded: #{Event.count}"

# Ministries
ministries = [
  { name: "Children's Ministry", description: "Teaching the love of Jesus to the youngest members of our church." },
  { name: "Worship Team", description: "Leading the congregation in heartfelt worship." }
]

ministries.each do |ministry|
  Ministry.create!(ministry)
end
puts "Ministries seeded: #{Ministry.count}"

# Prayer Requests
prayer_requests = [
  { name: "John Doe", email: "john@example.com", message: "Pray for my upcoming job interview.", anonymous: false },
  { name: "Anonymous", email: "", message: "Pray for strength and peace in my life.", anonymous: true }
]

prayer_requests.each do |request|
  PrayerRequest.create!(request)
end
puts "Prayer Requests seeded: #{PrayerRequest.count}"

# Donations
donations = [
  { amount: 50.00, frequency: "One-time" },
  { amount: 20.00, frequency: "Monthly" }
]

donations.each do |donation|
  Donation.create!(donation)
end
puts "Donations seeded: #{Donation.count}"

puts "Database seeding completed!"
