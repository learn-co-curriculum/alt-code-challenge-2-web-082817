class MovieScreen

  attr_accessor :car_count, :movie

  ALL = []

  def initialize(movie, capacity, drive_in)
    @movie = movie
    @capacity = capacity
    ALL << self
  end

  def cars
    Car.all.select {|car| car.movie_screen == self}
  end

  def at_capacity?
     self.cars.count == @capacity ? true : false
  end

  def add_car
    if !at_capacity?
      Car.new(self)
      "Enjoy!"
    else
      "Movie is sold out"
    end
  end

  def self.all_screens
    ALL
  end

end
