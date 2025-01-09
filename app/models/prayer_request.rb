class PrayerRequest < ApplicationRecord
  validates :name, presence: true
end
