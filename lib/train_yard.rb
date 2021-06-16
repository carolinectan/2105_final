class TrainYard
  attr_reader :location, :trains

  def initialize(info)
    @location = info[:location]
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def types_of_trains
    @trains.map do |train|
      train.type
    end.uniq.sort
  end

  def trains_containing(car)
    @trains.select do |train|
      train.cargo.keys.include?(car)
    end
  end

  def sorted_cargo_list
    @trains.flat_map do |train|
      train.cargo.keys.map do |car|
        car.type
      end
    end.uniq.sort
 end

 def total_inventory
   hash = Hash.new(0)

   @trains.each do |train|
     train.cargo.each do |car, amt|
       hash[car] += amt
     end
   end
   hash
 end

 def overflow_cars
   cars = []
   total_inventory.filter_map do |car, amt|
     cars << car if amt > 10 && trains_containing(car).length > 1
   end.flatten
 end
end
