class Call < ActiveRecord::Base
  belongs_to :user

  validates :caller, presence: true # TODO: validate format
  # validates :voicemail # TODO: validate format
  validates :user, presence: true, allow_nil: true
  validate :user_or_voicemail

  private

  def user_or_voicemail
    errors.add :voicemail, 'is missing' unless user || voicemail.present?
  end
end
