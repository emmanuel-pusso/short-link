class Link < ApplicationRecord
    belongs_to :user
    has_many: visits
    validates_associated :visits, :user
    validates :url, :slug, presence: true
    validates :slug, uniqueness: true
    validates :url, :url => %w{http https ftp ftps}
end
