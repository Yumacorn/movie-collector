class Movie < ActiveRecord::Base
  attr_accessor :title, :genre, :release_year

  belongs_to :user

end
