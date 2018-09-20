class RentMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rent_mailer.rent_created.subject
  #
<<<<<<< HEAD
  def rent_created(rent_id)
    @rent = Rent.find(rent_id)
    mail to: @rent.user.email
=======
  def rent_created
    @rent = Rent.last
    @book_rented = Book.find(@rent.book_id)
    @user_renting = User.find(@rent.user_id)
    mail to: @user_renting.email
>>>>>>> Email with the rent details. Asyncronous job and hidden credentials
  end
end
