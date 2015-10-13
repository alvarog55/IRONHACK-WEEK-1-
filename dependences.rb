class Car 
	def initialize(engine, sound)
		@engine = engine
		@sound = sound

	end

	def start
		puts @sound  
		puts @engine.make_a_sound
	end
end

class Engine
	def initialize(noise)
		@noise = noise
	end

	def make_a_sound
		puts @noise
	end
end


my_engine = Engine.new("i am the engine")

first_car = Car.new(my_engine, "i am the car")

first_car.start