class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_participants
  has_many :participants, through: :event_participants, source: :user

  scope :past, -> { where('date < ?', Date.today) }
  scope :future, -> { where('date >= ?', Date.today) }
end
