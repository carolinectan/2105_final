require 'rspec'
require './lib/train'

RSpec.describe Train do
  before :each do
    @train1 = Train.new({name: 'Thomas', type: 'Tank'})
  end

  it 'exists' do
    expect(@train).to be_a(Train)
  end

  it 'initializes with attributes' do
    expect(@train1.name).to eq('Thomas')
    expect(@train1.type).to eq('Tank')
    expect(@train1.cargo).to eq({})
    expect(@train1.count_cars(@car1)).to eq(0)
  end

  it 'can add cars' do
    @train1.add_cars(@car1, 2)

    expect(@train1.cargo).to eq({@car1 => 2})
    expect(@train1.count_cars(@car1)).to eq(2)

    @train1.add_cars(@car1, 3)

    expect(@train1.cargo).to eq({@car1 => 5})
    expect(@train1.count_cars(@car1)).to eq(5)

    @train1.add_cars(@car2, 10)

    expect(@train1.cargo).to eq({@car1 => 5, @car2 => 10})
    expect(@train1.count_cars(@car1)).to eq(5)
    expect(@train1.count_cars(@car2)).to eq(10)
  end
end
