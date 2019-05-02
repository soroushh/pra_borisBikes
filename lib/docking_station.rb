require_relative "./bike.rb"
class DockingStation
  attr_reader :all_bikes
  def initialize(all_bikes = [])
    @all_bikes = all_bikes
  end

  def release_bike
    if @all_bikes == []
      raise "It is empty"
    else
      @all_bikes.pop()
    end 
  end

  def dock(bike)
    @all_bikes.push(bike)
  end
end
