require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
      raise "No bikes available" unless @bike #guard condition using raise method
      @bike
  end

  def dock(bike)
    @bike = bike
  end
end