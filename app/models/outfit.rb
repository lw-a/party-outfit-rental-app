class Outfit < ApplicationRecord
  belongs_to :user

  validates :color, :size, :location, :category, :name, :description, :price, presence: true
end
