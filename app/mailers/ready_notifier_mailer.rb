class ReadyNotifierMailer < ApplicationMailer
  default from: 'himajin315@gmail.com'

  def notify
    mail(to: 'himajin315@gmail.com', subject: 'Ready') do |format|
      format.text
    end
  end
end
