require_relative 'bike'

class Van
    attr_reader :broken_bikes, :van_capacity
    DEFAULT_VAN_CAPACITY = 3
    def initialize(van_capacity= DEFAULT_VAN_CAPACITY)
        @van_capacity = van_capacity
        @broken_bikes = [] 
    end
    def take_broken(bike)
        @broken_bikes << bike
        fail 'No broken bikes' if  @broken_bikes[-1].broken? != true
        fail 'Van is full' if full?
    end

    private
    attr_reader :bikes
    def full?
        @broken_bikes.count >= @van_capacity
    end

end