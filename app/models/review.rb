class Review < ApplicationRecord
  belongs_to :outfit
  validates :rating, presence: true
end
