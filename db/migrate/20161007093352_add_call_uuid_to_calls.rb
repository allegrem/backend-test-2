class AddCallUuidToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :call_uuid, :string
  end
end
