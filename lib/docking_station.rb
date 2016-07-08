require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Docking station is full' if full?
    bikes << bike
    bikes[0]
  end

  private

  attr_reader :bikes
  
  def full?
    if bikes.length >= @capacity
    true
    end
  end

  def empty?
    if bikes.empty?
    true
    end
  end

end
