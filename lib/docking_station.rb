require_relative 'bike'

class DockingStation
  attr_reader :bike

# def bike
#   return @bike
# end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    if @bike
      fail 'Docking station is full'
    else
      @bike = bike
    end
  end

  # def bike
  #   @bike
  # end



end
