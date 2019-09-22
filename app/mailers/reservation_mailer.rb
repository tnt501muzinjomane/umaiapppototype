class ReservationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.reservation_confirmation.subject
  #
  def reservation_confirmation
    @greeting = "Thank you for your your reservation"
    
    mail to: $m, subject: "New Reservation"
  end
end
