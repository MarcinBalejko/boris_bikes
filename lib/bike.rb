class Bike
    def initialize
        @broken = false
    end
    def working?
        true
    end
    def report_broken
        @broken = true
    end
    def broken?
        @broken
    end
    def gets_repaired
        @broken = false
    end
end