class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url  = 'https://vast-peak-96314.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
