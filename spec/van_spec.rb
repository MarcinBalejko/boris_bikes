require './lib/van.rb'

describe Van do

    let(:bike) {Bike.new}

    it 'reacts to take_broken method' do
    expect(subject).to respond_to(:take_broken)
    end

    it 'leaves ok bike' do
        bike = double(:bike, broken?: false)
        expect{subject.take_broken(bike)}.to raise_error 'No broken bikes'
    end

end