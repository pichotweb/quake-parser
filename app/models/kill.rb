class Kill < ApplicationRecord
  belongs_to :game
  belongs_to :killer, class_name: 'Player', foreign_key: 'killer_id', optional: true
  belongs_to :victim, class_name: 'Player', foreign_key: 'victim_id'

  validates :victim, presence: true
end