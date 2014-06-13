require_relative '../lib/used_car.rb'
require_relative '../lib/damages.rb'


damage_1 = Damage.new(500, "transmission broken")
damage_2 = Damage.new(1000, "engine broken")
damages = [damage_1, damage_2]


a_car = UsedCar.new("Honda", "accord", 2001, 20_000, 0.2, 80_000, damages)

binding.pry


