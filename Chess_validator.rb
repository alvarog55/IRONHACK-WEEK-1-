class Game
	attr_accessor:chessboard
	def initialize 
		width = 8
		height = 8
		@chessboard = Array.new(height){Array.new(width)}	
	end
end

class Printer
	def print_board_positions(name)
	puts name.chessboard
	end
end

chess = Game.new
hp = Printer.new

puts hp.print_board_positions(chess)