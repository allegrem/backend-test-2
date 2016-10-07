class CreateCompanyNumbersUsers < ActiveRecord::Migration
  def change
    create_table :company_numbers_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :company_number, index: true
    end
  end
end
