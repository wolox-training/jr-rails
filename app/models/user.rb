class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
=======
  # app/models/user.rb
  # ...
  # Hooks
>>>>>>> Added the files in Gist to project. Installed new gems added. Renamed the migration in the Gist and ran it. Erased the line 'before_action :authenticate_user' because was for auth with Device in views but that was blocking the current auth made for APIs. Made the POST and it returned the access_token successfully.
  before_validation :generate_verification_code, on: :create

  def generate_verification_code
    self.verification_code = AuthenticableEntity.verification_code
  end
  # ...
end
