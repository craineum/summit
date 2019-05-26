class RaffleItem < ApplicationRecord
  belongs_to :event

  enum raffle_type: [ :standard, :play_to_win ]
end
