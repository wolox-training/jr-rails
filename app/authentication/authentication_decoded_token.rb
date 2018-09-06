<<<<<<< HEAD
=======
# app/authentication/authentication_decoded_token.rb
>>>>>>> Added the files in Gist to project. Installed new gems added. Renamed the migration in the Gist and ran it. Erased the line 'before_action :authenticate_user' because was for auth with Device in views but that was blocking the current auth made for APIs. Made the POST and it returned the access_token successfully.
class AuthenticationDecodedToken < HashWithIndifferentAccess
  def expired?
    return false if self[:expiration_date].blank?
    Time.zone.now.to_i > self[:expiration_date]
  end

  def valid_verification_code?
    return true if self[:verification_code].blank?
    User.find(self[:user_id]).verification_code == self[:verification_code]
  end

  def warning_expiration_date_reached?
    return false if self[:warning_expiration_date].blank?
    Time.zone.now.to_i >= self[:warning_expiration_date]
  end

  def valid_renew_id?(renew_id)
    return true unless self[:renew_id].present? && renew_id.present?
    renew_id == self[:renew_id]
  end

  def able_to_renew?
    return true unless self[:expiration_date].present? && self[:maximum_useful_date].present?
    self[:expiration_date] < self[:maximum_useful_date]
  end
end
