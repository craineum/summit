class Attendee < ApplicationRecord
  belongs_to :company

  has_many :attendees_events, dependent: :destroy
  has_many :events, through: :attendees_events

  before_create :create_uuid

  private
    def create_uuid
      self.uuid = SecureRandom.uuid
    end
end
