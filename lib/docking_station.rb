require_relative 'bike'

class DockingStation
  attr_reader :bikes
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
   @bikes = []
   @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty? # guard condition using raise method
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    @bikes << bike
  end

  private

  def full?
    return true if @bikes.count >= capacity
  end

  def empty?
    return true if @bikes.empty?
  end

end