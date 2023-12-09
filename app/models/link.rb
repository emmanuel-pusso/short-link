class Link < ApplicationRecord
    belongs_to :user
    has_many :visits
    validates_associated :visits, :user
    validates :large_url, :slug, presence: true
    validates :slug, uniqueness: true
    validates :large_url, url: true
end