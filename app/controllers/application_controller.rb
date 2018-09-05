class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! #To ensure that a User is authenticated before uses a Route
end
