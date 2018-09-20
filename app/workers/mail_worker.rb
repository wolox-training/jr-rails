class MailWorker
  include Sidekiq::Worker

  def perform
    RentMailer.rent_created.deliver_now
  end
end
