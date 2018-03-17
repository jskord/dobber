class Dog < ApplicationRecord
  has_many :users
  def enough_food?
    time_difference = Time.current - last_feeding
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    return hours
  end

  def enough_walks?
    time_difference = Time.current - last_walk
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    return hours
    return true
  end

  def enough_treats?
    time_difference = Time.current - last_treat
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    return hours
    return true
  end
end
