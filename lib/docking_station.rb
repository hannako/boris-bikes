require_relative 'bike'

class DockingStation

  attr_accessor :working_bikes, :broken_bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @working_bikes = []
    @broken_bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
    working_bikes.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    bike.working? ? working_bikes << bike : broken_bikes << bike
  end

private

  def full?
    working_bikes.count == DEFAULT_CAPACITY
  end

  def empty?
    working_bikes.count == 0
  end

end
