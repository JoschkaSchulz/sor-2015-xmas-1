class ExampleMailer < ActionMailer::Base
  default from: "Wunschliste" #Email des Benutzers, der die Wunachliste schickt

  def send_email(recipient, sender)
    @recipient = recipient
    @sender = sender
    mail(to: @recipient.email, subject: 'Wunschliste')
  end
end
