class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.references :user, index: true, foreign_key: true
      t.string :caller
      t.string :voicemail

      t.timestamps null: false
    end
  end
end
