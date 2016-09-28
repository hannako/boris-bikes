class Garage

  attr_accessor :broken_bikes, :working_bikes

def initialize
  @broken_bikes = []
  @working_bikes = []
end

def receive_bikes(bikes)
  broken_bikes + bikes
end

def fix_bike(bike)
  bike.working = true
  working_bikes << bike
end

end
