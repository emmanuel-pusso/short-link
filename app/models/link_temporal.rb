class LinkTemporal < Link
    validates :expiration_date_time, presence: true
    validate: expires_is_not_in_the_past

    private

    def expires_is_not_in_the_past
        if !(expiration_date_time < DateTime.current)
            errors.add :expiration_date_time, 'DateTime cannot be in the past'
        end
    end
end
