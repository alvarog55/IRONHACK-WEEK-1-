class Converter
    def initialize(character)
        @character = character
        @converted_initial_position = []
    end
    def convert_characters
        @converted_initial_position[0] = (@initial_position[0].ord - 96).to_i
        @converted_initial_position[1] = (@initial_position[1]).to_i
        moves
    end
end



class Pawn
    attr_accessor :initial_position, :final_positions, :converted_initial_position, :requested_position
    def initialize(initial_position,requested_position)
        @initial_position = initial_position
        @requested_position = requested_position
        @final_positions = [ ]
        @position_move = [0,0]
        @converted_initial_position = []

    end

    def start
        convert_letter_to_number
    end

    end

    def moves
        @position_move[0] = @converted_initial_position[0]
        @position_move[1] = @converted_initial_position[1] + 1
        @position_move[2] = @converted_initial_position[0]
        @position_move[3] = @converted_initial_position[1] + 2
        slice_array_into_arrays
    end

    def slice_array_into_arrays
        @final_positions = @position_move.each_slice(2).to_a
        convert_numbers_to_letters
        convert_requested
    end

    def convert_numbers_to_letters
        @final_positions.each do |solution|
            solution[0] = (solution[0] + 96).chr
        end
        @final_positions
    end

    def convert_requested
        @requested_position = [@requested_position[0].to_s,requested_position[1].to_i]
        puts check_if_valid
    end

    def check_if_valid
        @final_positions.include?@requested_position

    end

end

peon = Pawn.new("a2","a4")

peon.start