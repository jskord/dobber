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

  def feeding
    active_user = current_user
    dog = active_user.dog
    dog.feedings = dog.feedings + 1
    dog.last_feeding = Time.now
    dog.save
    render 'feeding.html.erb'
  end

  def walk
    active_user = current_user
    dog = active_user.dog
    dog.walks = dog.walks + 1
    dog.last_feeding = Time.now
    dog.save
    render 'walk.html.erb'
  end

  def treat
    active_user = current_user
    dog = active_user.dog
    dog.treats = dog.treats + 1
    dog.last_feeding = Time.now
    dog.save
    render 'treat.html.erb'
  end

end
