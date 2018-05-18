# frozen_string_literal: true

# overloads devises current_user method to return a default user if one isn't
# already present.
module GuestUser
  extend ActiveSupport::Concern

  included do
    def current_user
      super || guest_user
    end
  end

  private

  def guest_user
    OpenStruct.new(
      name:       'Guest User',
      first_name: 'Guest',
      last_name:  'User',
      email:      'guest@example.com'
    )
  end
end