class User < ActiveRecord::Base
  validates :name, presence: true
  validates :sip, presence: true
end
