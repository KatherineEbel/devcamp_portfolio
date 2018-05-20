class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include DefaultUser
  include DefaultContent
end

