# frozen_string_literal: true

class RentMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rent_mailer.rent_created.subject
  #

  I18n.with_locale(:es) do
    I18n.locale #=> :es
  end

  def rent_created(rent_id)
    @rent = Rent.find(rent_id)
    mail to: @rent.user.email
  end
end
