
class CarLot

  attr_reader :name
  attr_accessor :inventory

  def initialize(name, inventory)
    @name = name
    @inventory = inventory
  end

  def lot_value
    value = 0
    inventory.each do |car|
      value += car.value
    end
    value
  end

  def find(make: nil, model: nil, year: nil)
    @inventory.select do |car|
      (make.nil? || (car.make == make) ? true : false) &&
        (model.nil? || (car.model == model) ? true : false) &&
        (year.nil? || (car.year == year) ? true : false)
    end
  end

end


