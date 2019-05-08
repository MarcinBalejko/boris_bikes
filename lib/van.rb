require_relative 'bike'

class Van
    attr_reader :broken_bikes, :van_capacity
    DEFAULT_VAN_CAPACITY = 20
    def initialize(van_capacity= DEFAULT_VAN_CAPACITY)
        @van_capacity = van_capacity
        @broken_bikes = [] 
    end
    def take_broken(bike)
        @broken_bikes << bike
        fail 'No broken bikes' if  @broken_bikes[-1].broken? != false
    end
end