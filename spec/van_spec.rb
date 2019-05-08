require './lib/van.rb'
require './lib/bike.rb'

describe Van do


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
end