class Owner::BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.bookings_as_owner
    end
  end
end
