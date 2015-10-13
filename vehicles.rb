class Vehicle
	attr_accessor :wheels, :sounds
	def initialize(wheels, sounds)
		@wheels = wheels
		@sounds	= sounds
	end
end

class Counter
	def initialize(array)
		@array = array
	end
	def count
		result = @array.reduce(0) {|sum, x|  sum + x.wheels}
		puts result
	end
end

class Speaker
	def count_sounds(vehicles)
		result = vehicles.reduce("") {|sum, x| sum + x.sounds}
		puts result
	end
end

bike = Vehicle.new(2, "bffff")
bus = Vehicle.new(6, "ffmmmmm")
car = Vehicle.new(4,"stttt")

vehicles = [bike, bus, car]


my_counter = Counter.new(vehicles)
my_sounds = Speaker.new

my_counter.count

my_sounds.count_sounds(vehicles)
