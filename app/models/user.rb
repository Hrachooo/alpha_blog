class User < ApplicationRecord
    before_save { self.email = email.downcase}
    has_many :articles
    validates :username, presence: true,
                length: {minimum: 3, maximmum: 25},
                uniqueness: {case_sensitive: false}
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
                length: {minimum: 10, maximum: 105},
                uniqueness: {case_sensitive: false},
                format: { with: EMAIL_REGEX }
end 