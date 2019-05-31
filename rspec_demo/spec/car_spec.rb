require './lib/car.rb'

describe Car do

    it 'needs to be a volvo' do
        expect(subject.brand).to eq 'volvo'
    end

    it 'needs to have 4 wheels' do
        expect(subject.wheels).to eq 4
    end

    it 'needs to be red' do
        expect(subject.color).to eq 'red'
    end

    describe '#change_color' do
    it 'change_color' do
        expected_outcome = 'blue'
        expect(subject.change_color('blue')).to eq expected_outcome
        end
    end
end
