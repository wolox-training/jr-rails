# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'wbooksapi@wolox.co'
  layout 'mailer'
end
