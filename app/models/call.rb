class Call < ActiveRecord::Base
  belongs_to :user

  validates :caller, presence: true # TODO: validate format
  # validates :voicemail # TODO: validate format
  validates :user, presence: true, allow_nil: true
  validates :call_uuid, presence: true # TODO: validate format
end
