class Member < ApplicationRecord
  validates :name, presence: true
  validates :role, presence: true
  validates :phone, presence: true

  # Add associations if needed, e.g., a member belongs to a ministry:
  # belongs_to :ministry
end
