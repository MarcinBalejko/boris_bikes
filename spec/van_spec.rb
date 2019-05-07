require './lib/van.rb'

describe Van do

    let(:van) {Van.new}

    it 'reacts to take_broken method' do
    expect(subject).to respond_to(:take_broken)
    end

    it 'takes broken bike' do
        bike = Bike.new
        expect(van.take_broken(bike)[0]).to eq bike
    end




end