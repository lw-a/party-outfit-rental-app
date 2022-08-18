class Outfit < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  validates :color, :size, :address, :category, :name, :description, :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_,
  against: [ :name, :size, :color, :description, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
