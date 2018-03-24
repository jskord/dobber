class UsersController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      dog_id: 1
    )
    if @user.save
      UserMailer.welcome_email(@user).deliver
      session[:user_id] = @user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end
end
