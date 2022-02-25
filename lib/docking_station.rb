require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
   @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?# guard condition using raise method
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    @bikes << bike
  end
end

private

def full?
  return true if @bikes.count >= 20
end

def empty?
  return true if @bikes.empty?
end

