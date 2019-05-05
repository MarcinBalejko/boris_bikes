require './lib/docking_station.rb'

describe DockingStation do

    subject {DockingStation.new}
    let(:bike) {Bike.new}

    it "Releases a bike" do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to(:release_bike)
    end

    it {is_expected.to respond_to(:dock).with(1).argument}
    
    it {is_expected.to respond_to(:release_bike)}

    it "releases working bikes" do
        bike = Bike.new
        subject.dock(bike)
        expect(bike).to be_working
    end

    it 'docks a bike' do
        bike = Bike.new
        expect(subject.dock(bike)[0]).to eq bike
    end    

    it 'releases bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
    end
    
    it 'raises an error when there are no bikes available' do
        expect{subject.release_bike}.to raise_error 'No bikes available'
    end
    
    it 'raises an error when full' do
        subject.capacity.times {subject.dock Bike.new}
        expect{subject.dock Bike.new}.to raise_error 'Docking station full'
    end
    
    it 'Has a default capacity' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'defaults capacity' do
        described_class::DEFAULT_CAPACITY.times do
            subject.dock(bike)
        end
        expect{subject.dock(bike)}.to raise_error 'Docking station full'
    end

    it 'keeps the broken bike' do 
        bike.report_broken
        subject.dock(bike)
        expect{subject.release_bike}.to raise_error 'No bikes available'
    end

end