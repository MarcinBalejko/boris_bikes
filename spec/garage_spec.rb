require './lib/garage.rb'

describe Garage do

    

    it 'reacts to receive_broken method' do
    expect(subject).to respond_to(:receive_broken)
    end

    it 'receives broken bikes' do
        bike = Bike.new
        bike.report_broken
        expect(subject.receive_broken(bike)[-1]).to eq bike
    end
end
