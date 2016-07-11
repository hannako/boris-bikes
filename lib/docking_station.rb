require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    working_bikes = bikes.select {|bike| (unless bike.broken? then bike end)}
    fail 'No bikes available' if working_bikes.count == 0
    working_bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
    bikes[0]
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end

end
