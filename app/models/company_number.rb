class CompanyNumber < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :sip_endpoint, presence: true
end
