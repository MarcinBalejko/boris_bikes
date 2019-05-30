require_relative 'van'
require_relative 'bike'
require_relative 'docking_station'

class Garage
    attr_reader :garage_capacity
    DEFAULT_GARAGE_CAPACITY = 3
    def initialize(garage_capacity= DEFAULT_GARAGE_CAPACITY)
        @bikes_to_repair = []
        @garage_capacity = garage_capacity
    end
    def receive_broken(bike)
        fail 'Garage is full' if full?
        @bikes_to_repair << bike
    end
    def collect_vans_bikes(package)
        @bikes_to_repair << package
    end
    def repair
        @bikes_to_repair = @bikes_to_repair.flatten                         
        @bikes_to_repair.each do |bike|
            bike.gets_repaired 
        end
    end
    def release_working_bike
        fail 'Garage is empty' if empty? || @bikes_to_repair[-1].broken? == true 
        @bikes_to_repair.pop
    end
    private
    attr_reader :bikes_to_repair
    def full?
        @bikes_to_repair.count >= @garage_capacity
    end
    def empty?
        @bikes_to_repair.empty?
    end
    
end

