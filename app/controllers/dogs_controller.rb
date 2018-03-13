class DogsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    dog = Dog.new(
      feedings: 0,
      treats: 0,
      walks: 0
    )
    dog.save
    active_user = current_user
    active_user.dog_id = dog.id
    active_user.save
    if dog.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end
end
