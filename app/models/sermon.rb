class Sermon < ApplicationRecord
  # Validations
  validates :title, presence: true
  validates :date, presence: true
  validates :video_url, presence: true

  # Associations (if any) can go here, e.g., if a sermon belongs to a ministry
  # belongs_to :ministry
end
