class User < ActiveRecord::Base
  has_many :user_numbers

  validates :name, presence: true
end
