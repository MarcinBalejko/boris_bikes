require './lib/bike'
describe Bike do
    it {is_expected.to respond_to :working?}
end
describe Bike do
    it 'it can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
    end

    it 'can get repaired' do
        subject.report_broken
        subject.gets_repaired
        expect(subject).not_to be_broken
    end
end