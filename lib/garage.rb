require_relative 'van'
require_relative 'bike'

class Garage
    attr_reader :bikes_to_repair
    def initialize
        @bikes_to_repair = []
    end
    def receive_broken(bike)
        @bikes_to_repair << bike

    end
end

