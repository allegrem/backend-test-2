class Call < ActiveRecord::Base
  belongs_to :user_number

  validates :caller, presence: true
  validates :call_uuid, presence: true
end
