class Car
  attr_reader :type, :weight

  def initialize(info)
    @type = info[:type]
    @weight = info[:weight]
  end
end
