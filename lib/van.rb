require_relative 'bike'
class Van
    attr_reader :broken_bikes
    def initialize
        @broken_bikes = []
    end
    def take_broken(bike)
        @broken_bikes << bike
    end
end