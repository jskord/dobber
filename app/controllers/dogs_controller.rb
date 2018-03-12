class DogsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    dog = Dog.new(
      user_id: current_user.id,
      feedings: 0,
      treats: 0,
      walks: 0
    )
    if dog.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end
end
