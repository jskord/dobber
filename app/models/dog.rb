class Dog < ApplicationRecord
  has_many :users
  def enough_food?
    time_difference = Time.current - last_feeding
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    return hours
  end

  def enough_walks?
    return true
  end

  def enough_treats?
    return true
  end
end
