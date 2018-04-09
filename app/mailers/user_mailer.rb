class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url  = 'https://vast-peak-96314.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to the Dobber App!')
  end

  def feeding_email(user)
    @user = user
    @url  = 'https://vast-peak-96314.herokuapp.com'
    mail(to: @user.email, subject: 'Time to feed your Dobber!')
  end

  def walk_email(user)
    @user = user
    @url  = 'https://vast-peak-96314.herokuapp.com'
    mail(to: @user.email, subject: 'Time to walk your Dobber!')
  end

  def treat_email(user)
    @user = user
    @url  = 'https://vast-peak-96314.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to the Dobber App!r')
  end
end

