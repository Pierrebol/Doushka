class AddOwnerIdToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :owner_id, :integer
  end
end
