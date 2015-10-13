class Person
	attr_reader :name 
	attr_accessor :age
	def initialize (name, age)
		@name = name
		@age = age

	end

end

person = Person.new("Alvaro", 30)


person.age = 40

puts person.age
puts person.name




