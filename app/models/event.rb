class Event < ApplicationRecord
  belongs_to :company

  has_many :attendees_events
  has_many :attendees, through: :attendees_events
  has_many :events_users
  has_many :users, through: :events_users

  scope :closest, -> { where(end_at: DateTime.current..).order(:start_at).first }
end
