<<<<<<< HEAD
=======
# db/migrate/XXXX_add_verification_code_to_users.rb
>>>>>>> Added the files in Gist to project. Installed new gems added. Renamed the migration in the Gist and ran it. Erased the line 'before_action :authenticate_user' because was for auth with Device in views but that was blocking the current auth made for APIs. Made the POST and it returned the access_token successfully.
class AddVerificationCodeToUsers < ActiveRecord::Migration[5.0]
    def change
        add_column :users, :verification_code, :string, null: false
    end
end