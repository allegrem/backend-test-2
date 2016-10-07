class UpdateCalls < ActiveRecord::Migration
  def change
    rename_column :calls, :caller, :from
    add_reference :calls, :company_number, index: true, foreign_key: true
  end
end
