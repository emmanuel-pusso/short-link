require "ipaddress"

class Visit < ApplicationRecord
    belongs_to :link
    validates :date_visit, :ip_address, presence: true
    validate :is_valid_ip?

    protected
        def is_valid_ip?
            if !(IPAddress.valid? ip_address) 
                errors.add :ip_address, 'invalid format for ip adrress'
            end
        end
end
