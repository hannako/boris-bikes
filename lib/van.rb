class Van

  attr_accessor :bikes, :capacity
  DEFAULT_CAPACITY = 4

  def initialize(capatcity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def collect_bikes(docking_station)
    raise "The van is full" if full?
    bikes + docking_station.broken_bikes

  end

  def deliver_bikes(garage)
    garage.receive_bikes(bikes)
    bikes.clear
  end

  private

  def empty?
    bikes.count == 0
  end

  def full?
    bikes.count == DEFAULT_CAPACITY
  end

end
