class LinkPrivate < Link
    validates :password_link_access, presence: true
end