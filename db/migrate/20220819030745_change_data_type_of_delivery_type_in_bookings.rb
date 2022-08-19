class ChangeDataTypeOfDeliveryTypeInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column(:bookings, :delivery_type, :string)
  end
end
