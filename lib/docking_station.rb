require_relative "./bike.rb"
class DockingStation
  attr_reader :all_bikes
  def initialize(all_bikes = [])
    @all_bikes = all_bikes
  end

  def release_bike
    Bike.new()
  end

  def dock(bike)
    @all_bikes.push(bike)
  end
end
