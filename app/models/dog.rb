class Dog < ApplicationRecord
  has_many :users
  def enough_food?
    time_difference = Time.current - last_feeding
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    return hours
  end

  def next_feeding?
    time_difference = Time.current - last_feeding
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    time_left = 12 - hours
    return time_left
  end

  def enough_walks?
    time_difference = Time.current - last_walk
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    return hours
  end

  def next_walk?
    time_difference = Time.current - last_walk
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    time_left = 12 - hours
    return time_left
  end


  def enough_treats?
    time_difference = Time.current - last_treat
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    return hours
  end

  def next_treat?
    time_difference = Time.current - last_treat
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    time_left = 12 - hours
    return time_left
  end

  def age
    time_difference = Time.current - created_at
    minutes = (time_difference / 1.minute).round
    hours = (time_difference / 1.hour).round
    days = (time_difference / 1.day).round
    return days
  end
end
