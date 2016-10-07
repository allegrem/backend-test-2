class RemoveSipFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :sip, :string
  end
end
