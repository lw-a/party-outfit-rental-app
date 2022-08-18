class Owner::BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.bookings_as_owner
    end
  end

  def index?
    true
  end
end
