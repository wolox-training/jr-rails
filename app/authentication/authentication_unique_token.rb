<<<<<<< HEAD
=======
# app/authentication/authentication_unique_token.rb
>>>>>>> Added the files in Gist to project. Installed new gems added. Renamed the migration in the Gist and ran it. Erased the line 'before_action :authenticate_user' because was for auth with Device in views but that was blocking the current auth made for APIs. Made the POST and it returned the access_token successfully.
class AuthenticationUniqueToken
  class << self
    # I'm not checking the uniqueness because its unlikely to happen
    def generate
      SecureRandom.hex(16)
    end
  end
end
