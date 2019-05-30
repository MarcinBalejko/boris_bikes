require './lib/van.rb'
require './lib/bike.rb'
require './lib/garage.rb'

describe Van do

    let(:bike) {Bike.new}


    it 'reacts to take_broken method' do
    expect(subject).to respond_to(:take_broken)
    end

    it 'leaves ok bike' do
        bike = Bike.new
        expect{subject.take_broken(bike)}.to raise_error 'No broken bikes'
    end

    it 'has a default capacity' do
    expect(subject.van_capacity).to eq Van::DEFAULT_VAN_CAPACITY
    end


    it 'raises an error when empty' do
    expect{subject.release_broken}.to raise_error 'No broken bikes available'
    end

    it 'releases broken bike' do
    bike.report_broken
    subject.take_broken(bike)
    expect(subject.release_broken).to eq bike
    end

    it 'raises an error when full' do
    bike.report_broken
    subject.van_capacity.times { subject.take_broken(bike) }
    expect{subject.take_broken(bike)}.to raise_error 'Van is full'
    end
    
    it 'raises error when no bikes to pass' do
        garage = Garage.new
        bike.report_broken
        subject.van_capacity.times { subject.take_broken(bike)}
        subject.pass_to_garage(garage)
        expect{ subject.pass_to_garage(garage) }.to raise_error 'No broken bikes available'
    end
end
