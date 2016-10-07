class Call < ActiveRecord::Base
  belongs_to :user_number
  belongs_to :company_number

  validates :from, presence: true
  validates :company_number, presence: true
  validates :call_uuid, presence: true
end
