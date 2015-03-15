class AddCancelledToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :cancelled, :boolean
  end
end
