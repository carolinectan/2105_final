require 'rspec'
require './lib/car'

RSpec.describe Car do
  describe 'iteration 1' do
    before :each do
      @car1 = Car.new({type: 'Mail', weight: 5})
      @car2 = Car.new({type: 'Passengers', weight: 1})
    end

    it 'exists' do
      expect(@car1).to be_a(Car)
      expect(@car2).to be_a(Car)
    end

    it 'initializes with attributes' do
      expect(@car1.type).to eq('Mail')
      expect(@car1.weight).to eq(5)

      expect(@car2.type).to eq('Passengers')
      expect(@car2.weight).to eq(1)
    end
  end
end
