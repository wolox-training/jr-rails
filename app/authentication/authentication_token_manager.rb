<<<<<<< HEAD
=======
# app/authentication/authentication_token_manager.rb
>>>>>>> Added the files in Gist to project. Installed new gems added. Renamed the migration in the Gist and ran it. Erased the line 'before_action :authenticate_user' because was for auth with Device in views but that was blocking the current auth made for APIs. Made the POST and it returned the access_token successfully.
class AuthenticationTokenManager
  class << self
    def encode(payload)
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      payload = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      AuthenticationDecodedToken.new(payload)
    rescue StandardError
      nil
    end
  end
end
