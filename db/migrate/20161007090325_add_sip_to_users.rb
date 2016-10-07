class AddSipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sip, :string
  end
end
