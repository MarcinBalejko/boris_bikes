require_relative 'bike'
class DockingStation
    attr_reader :bike
    def release_bike
        fail 'No bikes available' unless @bike
        @bike
    end
    def dock(bike)
        fail 'No room for another bike' unless @bike == nil
        @bike = bike
    end
end
