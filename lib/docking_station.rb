require_relative 'bike'
require_relative 'garage'
require_relative 'van'
class DockingStation
    attr_reader :capacity
    DEFAULT_CAPACITY = 20
    def initialize(capacity= DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = [] 
    end
    def release_bike
        fail 'No bikes available' if empty? || @bikes[-1].broken? == true
        @bikes.pop
    end
    def dock(bike)
        fail 'Docking station full' if full?
        @bikes << bike
    end

    private
    attr_reader :bikes
    def full?
        @bikes.count >= @capacity
    end
    def empty?
        @bikes.empty?
    end

end
