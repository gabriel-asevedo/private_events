class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', foreign_key: 'user_id'
  has_many :event_participants, foreign_key: 'participant_id'
  has_many :attended_events, through: :event_participants, source: :event

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
