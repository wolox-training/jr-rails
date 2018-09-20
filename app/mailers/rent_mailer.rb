class RentMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rent_mailer.rent_created.subject
  #
  def rent_created
    @rent = Rent.last
    @book_rented = Book.find(@rent.book_id)
    @user_renting = User.find(@rent.user_id)
    mail to: @user_renting.email
  end
end
