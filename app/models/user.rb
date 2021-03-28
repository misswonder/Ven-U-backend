class User < ApplicationRecord

    has_many :tickets
    has_many :events, through: :tickets
    has_many :hosted, class_name: 'Event'

    has_secure_password
    validates :username, presence: true, uniqueness: true
    # validates :password, presence: true

end
