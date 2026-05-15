class ChangeStartAndEndDateToDatetime < ActiveRecord::Migration[7.2]
  def change
    change_column :bookings, :start_date, :datetime, using: 'start_date::timestamp'
    change_column :bookings, :end_date, :datetime, using: 'end_date::timestamp'
  end
end
