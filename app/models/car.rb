class Car

  attr_accessor :movie_screen

  ALL = []

  def initialize(movie_screen)
    @movie_screen = movie_screen
    ALL << self
  end

  def self.all
    ALL
  end
end
