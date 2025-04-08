<<<<<<< HEAD
class Movie < ActiveRecord::Base
=======
class Movie < ApplicationRecord
>>>>>>> 6cbe8db3053db20fb7feed67ef7c2cb5cd040d38
  #### Part 1 ####
  # implement this method. Remeber to exclude [self]
  # (the current movie) from your return value
  def others_by_same_director
    # Your code here #
<<<<<<< HEAD
    return [] if director.blank?
    Movie.where(director: director).where.not(id: id)
=======
>>>>>>> 6cbe8db3053db20fb7feed67ef7c2cb5cd040d38
  end
end
