class UserNumber < ActiveRecord::Base
  belongs_to :user

  validates :sip_endpoint, presence: true
end
