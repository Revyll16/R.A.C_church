class Ministry < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :leader_name, presence: true
end
