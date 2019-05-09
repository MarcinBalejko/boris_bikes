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

    #it 'repairs bikes' do
    #bike = double(:bike, broken?: true)
    #subject.receive_broken bike
    #subject.repair
    #subject.
    #end

    it 'has a default capacity' do
        expect(subject.garage_capacity).to eq Garage::DEFAULT_GARAGE_CAPACITY
        end
end
