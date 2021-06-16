require 'rspec'
require './lib/train'
require './lib/car'

RSpec.describe Train do
  describe 'iteration 1' do
    before :each do
      @train1 = Train.new({name: 'Thomas', type: 'Tank'})
      @car1 = Car.new({type: 'Mail', weight: 5})
      @car2 = Car.new({type: 'Passengers', weight: 1})

    end

    it 'exists' do
      expect(@train1).to be_a(Train)
    end

    it 'initializes with attributes' do
      expect(@train1.name).to eq('Thomas')
      expect(@train1.type).to eq('Tank')
      expect(@train1.cargo).to eq({})
    end

    it 'can add cars' do
      expect(@train1.count_cars(@car1)).to eq(0)

      @train1.add_cars(@car1, 2)

      expect(@train1.cargo).to eq({@car1 => 2})
      expect(@train1.count_cars(@car1)).to eq(2)

      @train1.add_cars(@car1, 3)

      expect(@train1.cargo).to eq({@car1 => 5})
      expect(@train1.count_cars(@car1)).to eq(5)

      @train1.add_cars(@car2, 10)

      expect(@train1.cargo).to eq({@car1 => 5, @car2 => 10})
    end
  end
end
