class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
=======
  # before_action :authenticate_user! # To ensure that a User is authenticated before uses a Route
>>>>>>> Added the files in Gist to project. Installed new gems added. Renamed the migration in the Gist and ran it. Erased the line 'before_action :authenticate_user' because was for auth with Device in views but that was blocking the current auth made for APIs. Made the POST and it returned the access_token successfully.
end
