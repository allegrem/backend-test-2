class AddPickupTimeDurationToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :pickup_time, :integer
    add_column :calls, :duration, :integer
  end
end
