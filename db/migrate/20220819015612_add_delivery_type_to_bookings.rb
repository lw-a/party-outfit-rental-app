class AddDeliveryTypeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :delivery_type, :integer, default: 0
  end
end
