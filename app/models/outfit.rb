class Outfit < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  validates :color, :size, :location, :category, :name, :description, :price, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_address?
end
