class Pawn
	attr_accessor :initial_position
	def initialize(initial_position)
		@initial_position = initial_position
		@converted_initial_position = []
	end
	def convert_letter_to_number
		@converted_initial_position[0] = (@initial_position[0].ord - 96).to_i
	end
end	

class Converter
	def initialize
	end
	def convert_
end

peon = Pawn.new("a2")
puts peon.convert_letter_to_number