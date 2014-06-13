require_relative 'car'
require 'pry'

class UsedCar < Car

  MILEAGE_DEPRECIATION = 0.01

  attr_reader :mileage, :damages

  def initialize(make, model, year, msrp, markup, mileage, damages)
    @mileage = mileage
    @damages = damages
    super(make, model, year, msrp, markup)

  end

  def value
    #calculate value based on depreciation and damages
    total_damages = 0
    #binding.pry
    @damages.each do |damage|
      total_damages += damage.cost
    end
    super * (1 - (MILEAGE_DEPRECIATION * @mileage / 10_000.0)) - total_damages
  end

end
