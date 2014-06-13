require_relative '../lib/used_car.rb'
require_relative '../lib/damages.rb'
require_relative '../lib/car_lot.rb'


damage_1 = Damage.new(500, "transmission broken")
damage_2 = Damage.new(1000, "engine broken")
damage_3 = Damage.new(8_000, "car broken")
damages_2 = [damage_3, damage_1]
damages = [damage_1, damage_2]


a_car = UsedCar.new("Honda", "accord", 2001, 20_000, 0.2, 80_000, damages)
another_car = UsedCar.new("BMW", "320i", 1978, 10_000, 0.1, 100_000, damages_2)
a_third_car = Car.new("Honda", "civic", 2014, 30_000, 0.1)

toms_lot = CarLot.new("Toms Lot", [a_car, another_car, a_third_car])

binding.pry


