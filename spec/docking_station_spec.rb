require './lib/docking_station.rb'
describe DockingStation do
    it "Releases a bike" do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to(:release_bike)
    end
describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
    it "releases working bikes" do
        bike = subject.release_bike
        expect(bike).to be_working
    end
end
end