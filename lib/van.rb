require_relative 'bike'

class Van
    attr_reader :broken_bikes, :van_capacity
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

    private
    attr_reader :bikes
    def full?
        @broken_bikes.count >= @van_capacity
    end
    def empty?
        @broken_bikes.empty?
    end

end