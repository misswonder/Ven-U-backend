class Event < ApplicationRecord
    belongs_to :venue
    has_many :tickets
    has_many :users, through: :tickets
    belongs_to :artist, foreign_key: :user_id, class_name: 'User'
end
