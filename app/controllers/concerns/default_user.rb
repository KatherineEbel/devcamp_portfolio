# frozen_string_literal: true

# overloads devises current_user method to return a default user if one isn't
# already present.
module DefaultUser
  extend ActiveSupport::Concern

  included do
    def current_user
      super || guest_user
    end
  end

  private

  def guest_user
    guest = GuestUser.new
    guest.name = 'Guest User'
    guest.first_name = 'Guest'
    guest.last_name = 'User'
    guest.email = 'guest@example.com'
    guest
  end
end