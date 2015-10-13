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
	
	def print_board_xy(name)
		name.chessboard.map do |x|
			x[0] = "0,1"
			x[1] = "0,1"
			x[2] = "0,1"
			x[3] = "0,1"
			x[4] = "0,1"
			x[5] = "0,1"
			x[6] = "0,1"
			x[7] = "0,1"
		end

	end	
end

chess = Game.new
hp = Printer.new

puts hp.print_board_xy(chess)
puts chess.chessboard

