class User < ApplicationRecord
    has_many :links
    validates_associated: links
    validates :username, :email, :password, presence: true
    validates :username, :email, uniqueness: true
    validates :email, format: URI::MailTo::EMAIL_REGEXP
end
