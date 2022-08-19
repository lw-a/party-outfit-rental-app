class Outfit < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :color, :size, :address, :category, :name, :description, :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  def image_url

    super || "hero.jpg"
  end

  include PgSearch::Model
  pg_search_scope :search_,
  against: [ :name, :size, :color, :description, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
