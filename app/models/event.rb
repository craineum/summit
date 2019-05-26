class Event < ApplicationRecord
  belongs_to :company
  has_many :events_users
  has_many :users, through: :events_users
end
