class ExampleMailer < ActionMailer::Base
  default from: "from@example.com" #Email des Benutzers, der die Wunachliste schickt

  def send_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
