require_relative 'bike'

class Van
    attr_reader :vancapacity
    VAN_CAPACITY = 20
    def initialize(vancapacity= VAN_CAPACITY)
        @vancapacity = vancapacity
        @broken_bikes = [] 
    end
    def release_broken
        fail 'No bikes available' if empty? || @broken_bikes[-1].broken? == false
        @broken_bikes.pop
    end
    def release_working
        fail 'No bikes available' if empty? || @broken_bikes[-1].broken? == true
        @broken_bikes.pop
    end
    def take_broken(bike)
        fail 'Docking station full' if full?
        fail 'No broken bikes' if  @broken_bikes[-1].broken? == false
        @broken_bikes << bike
    end

    private
    attr_reader :broken_bikes
    def full?
        @broken_bikes.count >= @vancapacity
    end
    def empty?
        @broken_bikes.empty?
    end
end