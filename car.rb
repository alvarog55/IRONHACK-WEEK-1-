require "io/console"

class Car
    attr_accessor :noise
    @@number_cars = IO.read("carss.txt").to_i # class variable (from 0)
	def initialize(noise)
		
		@noise = noise
		@@number_cars += 1 
		IO.write('carss.txt', @@number_cars) # = every car created +1
	end

#create a method to do actions
	def acc 
		puts "Broom"
	end

	def break
		puts @noise
	end

	def self.count
	@@number_cars #method to count cars (class variable sume cars from 0; we can not write puts)
	end



end

#create the cars
first_car = Car.new("Broommmm")
second_car = Car.new("Brouuuuuum")
third_car = Car.new("badaboomm")

#associate car to method


#call de to count cars
 # if we write .self in a method access trough to the Class, so we dont need to write first_car.count and second_car.count)

class Racing < Car
	def initialize
		@noise = "BROOM"
	end 

end

rac_car = Racing.new

rac_car.break

[first_car, second_car, third_car].each do |item| # i can write it as without end: {|car| car.break}
	item.break
end

sounds = ["Broom", "Meek", "Nyan"]

new_cars = sounds.map do |sound| 
	Car.new(sound)
end



# arr =[["Broom", "first_car"], ["Meek", "second_car"],["Nyan", "third_car"]]
# dict = arr.each_with_object({}) do |sound, memo| # another solution {}
# 	memo[sound[0].to_sym] = sound[1]
# 	end

# 	puts dict



first_car = Car.new("Broom")
second_car = Car.new("Meek")
third_car = Car.new("Nyan")
cars = [first_car, second_car, third_car]
puts cars.reduce("") {|sum, car| sum + car.noise}









