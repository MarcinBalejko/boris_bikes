require_relative 'bike'
require_relative 'garage'
require_relative 'docking_station'
class Van
    attr_reader :van_capacity
    DEFAULT_VAN_CAPACITY = 3
    def initialize(van_capacity= DEFAULT_VAN_CAPACITY)
        @van_capacity = van_capacity
        @broken_bikes = [] 
    end
    def take_broken(bike)
        fail 'No broken bikes' if  bike.broken? != true
        fail 'Van is full' if full?
        @broken_bikes << bike
    end
    def release_broken
        fail 'No broken bikes available' if empty?
        @broken_bikes.pop
    end
    def pass_to_garage(garage)
        fail 'No broken bikes available' if empty?
        bikes_set = @broken_bikes
        garage.collect_vans_bikes(bikes_set)
        @broken_bikes = []
    end
    
    private
    attr_reader :broken_bikes
    def full?
        @broken_bikes.count >= @van_capacity
    end
    def empty?
        @broken_bikes.empty?
    end

end