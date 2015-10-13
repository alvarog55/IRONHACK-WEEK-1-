class Car
	def initialize(speed)
		@speed = speed
	end
	
end
	
class Database
	def store_car(car)
	DB.sql("INSERT INTO Cars VALUES #{car.speed}")

	end
end

my_car = Car.new(125)
Database.new(save(my_car))