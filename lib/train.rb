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

  # For `#add_cars`, the first argument is a car object, the second is the number of cars.
  # For `#cargo` the keys are the car object, and the value is the number of cars.
  # It may be helpful to think of a `Car` as a type of train car and not necessarily an individual a car.
  def add_cars(car, num_of_cars)
    @cargo[car] += num_of_cars
  end


end
