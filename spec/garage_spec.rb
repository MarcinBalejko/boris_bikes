require './lib/garage.rb'

describe Garage do

    let(:bike) {Bike.new}

    it 'reacts to receive_broken method' do
        expect(subject).to respond_to(:receive_broken)
    end

    it 'receives broken bikes' do
        bike = Bike.new
        bike.report_broken
        expect(subject.receive_broken(bike)[-1]).to eq bike
    end

    it 'has a default capacity' do
        expect(subject.garage_capacity).to eq Garage::DEFAULT_GARAGE_CAPACITY
    end

    it 'raises an error when full' do
        bike.report_broken
        subject.garage_capacity.times { subject.receive_broken(bike) }
        expect{subject.receive_broken(bike)}.to raise_error 'Garage is full'
    end 

    it 'raises an error when empty' do
        expect{subject.release_working_bike}.to raise_error 'Garage is empty'
    end

    it 'repairs broken bike' do
        bike.report_broken
        subject.receive_broken(bike)
        subject.repair
        expect(bike.broken?).to be false
    end

    it "releases working bike" do
        bike = double(:bike, broken?: false)
        subject.receive_broken bike
        expect(subject.release_working_bike).to be bike
    end

end
