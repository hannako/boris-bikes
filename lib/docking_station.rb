require_relative 'bike'

class DockingStation
  # attr_reader :bikes

def initialize
  @bikes = []
end

# def bike
#   return @bike
# end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
      raise 'Docking station is full' if full?
      @bikes << bike
      @bikes[0]
    end

    private
    def full?
      if @bikes.length >= 20
        true
      end
    end

      def empty?
        if @bikes.empty?
          true
        end

      end


end
