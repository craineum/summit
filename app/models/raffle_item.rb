class RaffleItem < ApplicationRecord
  belongs_to :event
  has_many :raffle_entries

  enum raffle_type: [ :standard, :play_to_win ]
end
