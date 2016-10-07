class ChangeReferenceInCalls < ActiveRecord::Migration
  def change
    remove_reference :calls, :user, index: true, foreign_key: true
    add_reference :calls, :user_number, index: true, foreign_key: true
  end
end
