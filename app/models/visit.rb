class Visit < ApplicationRecord
    belongs_to :link
    validates :date_visit, :ip_address, presence: true
end
