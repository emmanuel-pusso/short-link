class Link < ApplicationRecord
    belongs_to :user
    has_many :visits
    validates_associated :visits, :user
    validates :base_url, :slug, presence: true
    validates :slug, uniqueness: true
    validates :base_url, url: true
end
