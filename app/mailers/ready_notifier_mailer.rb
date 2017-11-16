class ReadyNotifierMailer < ApplicationMailer
  def notify(user)
    @user = user
    mail(to: @user.email, subject: 'Ready') do |format|
      format.text
    end
  end
end
