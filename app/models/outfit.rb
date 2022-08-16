class Outfit < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :color, :size, :location, :category, :name, :description, :price, presence: true
end
