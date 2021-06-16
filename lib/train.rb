class Train
  attr_reader :name, :type, :cargo

  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @cargo = Hash.new(0)
  end

  def count_cars(car)
    @cargo[car]
  end

  def add_cars(car, num_of_cars)
    @cargo[car] += num_of_cars
  end

  def weight
    @cargo.sum do |car, amt|
      car.weight * amt
    end
  end
end
