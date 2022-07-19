class ChangeColumnBookingsStatusToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :status, :integer, using: 'status::integer'
  end
end
