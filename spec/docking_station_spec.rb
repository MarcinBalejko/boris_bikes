require './lib/docking_station.rb'
describe DockingStation do
    it "Releases a bike" do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to(:release_bike)
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
describe DockingStation do
    describe '#release_bike' do
        it 'releases bike' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end
    end
end
describe DockingStation do
    describe '#release bike' do
        it 'raises an error when there are no bikes available' do
            expect{subject.release_bike}.to raise_error 'No bikes available'
        end
    end
end
describe DockingStation do
    describe '#dock' do 
        it 'raises an error when there is already a bike docked' do
        bike = Bike.new
        expect{subject.dock(bike)}.to raise_error 'No room for another bike'
        end
    end
end
end
end
end