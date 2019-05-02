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
describe DockingStation do
    it {is_expected.to respond_to(:dock).with(1).argument}
    end
describe DockingStation do
    it {is_expected.to respond_to(:bike)}
    end
describe DockingStation do
    it 'docks something' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end
describe DockingStation do
    it 'returns docked bikes' do
        bike = Bike.new
        expect(subject.bike).to eq @bike
    end
end
end
end
end