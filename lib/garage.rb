require_relative 'van'
require_relative 'bike'

class Garage
    attr_reader :bikes_to_repair, :garage_capacity
    DEFAULT_GARAGE_CAPACITY = 3
    def initialize(garage_capacity= DEFAULT_GARAGE_CAPACITY)
        @bikes_to_repair = []
        @garage_capacity = garage_capacity
    end
    def receive_broken(bike)
        fail 'Garage is full' if full?
        @bikes_to_repair << bike

    end
    def repair
        @bikes_to_repair.each do |x|
            @broken = false  
        end
    end
    def release_working_bike
        fail 'No bikes available' if empty? || @bikes_to_repair[-1].broken? != false
        @bikes_to_repair.pop
    end

    private
    attr_reader :bikes
    def full?
        @bikes_to_repair.count >= @garage_capacity
    end


    
end

