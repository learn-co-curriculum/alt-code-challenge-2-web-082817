class DriveIn

  def initialize
    @name = "Happy's Sunset Drive-In"
  end

  def cars
    MovieScreen.all_screens.map {|ms| ms.cars}.flatten
  end

  def full_house
    MovieScreen.all_screens.all? {|screen| screen.at_capacity?}
  end

  def whats_playing
    MovieScreen.all_screens.map {|ms| ms.movie}
  end

end
