require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20
def initialize
  @bikes = []
end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
      fail 'Docking station is full' if full?
      @bikes << bike
      @bikes[0]
    end

    private
    def full?
      if @bikes.length >= DEFAULT_CAPACITY
        true
      end
    end

      def empty?
        if @bikes.empty?
          true
        end

      end


end
