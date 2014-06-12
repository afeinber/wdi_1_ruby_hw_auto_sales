require_relative 'car'

class UsedCar < Car

  MILEAGE_DEPRECIATION = 0.01

  attr_reader :mileage :damages

  def initialize(make, model, year, msrp, markup, mileage, damages)
    super
    @mileage = mileage
    @damages = damages
  end

  def value
    #calculate value based on depreciation and damages
    super * (1 - (MILEAGE_DEPRECIATION * @mileage / 1000.0)) - #damages
  end

