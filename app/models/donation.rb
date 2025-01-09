# app/models/donation.rb
class Donation < ApplicationRecord
  # Validations
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :frequency, presence: true, inclusion: { in: ["One-time", "Monthly", "Yearly"] }
end
