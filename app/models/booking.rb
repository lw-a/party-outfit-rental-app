class Booking < ApplicationRecord
  belongs_to :outfit
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  enum status: { pending: 0, approved: 1, rejected: 2 }
end
