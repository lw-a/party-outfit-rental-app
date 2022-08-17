class Booking < ApplicationRecord
  belongs_to :outfit
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  validate :not_past_start_date
  validate :not_past_end_date
  enum status: { pending: 0, approved: 1, rejected: 2, completed: 3 }

  def not_past_start_date
    if start_date < Date.today
      errors.add(:date, 'please start the booking from tomorrow or later')
      notice = 'Hello'
    end
  end

  def not_past_end_date
    if end_date < Date.today + 1
      errors.add(:date, 'bookings have to be at least one day long')
    end
  end
end
