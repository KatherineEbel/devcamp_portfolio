class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include GuestUser
  include DefaultContent
end
