# interconnected rooms, so in array. a room is a class. there are different kind of rooms
# the current location can be 4 options (four rooms). why is it important to know the current position? because
# player need

class Room

	attr_accessor :doors, :description
	def initialize (doors, description, object)
		@doors = doors
		@description = description
		@object= object
	end
end

class Game
	def initialize
		@commands = ["N", "S", "W", "E"]
		@rooms = []
		@current_location = 0
	end
	
	def add_rooms(room)
		@rooms.push(room)
	end

	def start
		puts @rooms[@current_location].description
		puts @rooms[@current_location].doors
		puts "Where do you want to go?"
		puts ">"
		answer = gets.chomp
		process(answer)
	end

	def process(answer)
		if @current_location == 3
			puts "It was time! you can call to Nacho to go to Gallito "
		elsif @rooms[@current_location].doors == answer
			@current_location += 1
			puts @rooms[@current_location].description
			puts "Where do you want to go now?"
  			answer = gets.chomp
  			process(answer)
  		elsif answer = "exit"
  			exit
  		else 
  			puts "There is not exit in this direction!"
  			puts "Try a different command"
  			answer = gets.chomp
  			process(answer)
		end
	end
end


first_room = Room.new("W", "You are in a cave filled with snakes.", "There is a sword")
second_room = Room.new("W", "You are in a old empty house.")
third_room = Room.new("W", "You are in a garden. There are a lot of trees and two dangerous dogs.")
fourth_room = Room.new("W", "You are in a beach. There i as ship.")


level = Game.new
#user can interact in this rooms, so can select every element of array, so array[]
#to prompt user user for the movement i need a hash
#character stars in a room, so print the description of the room and a hint to do the next
level.add_rooms(first_room)
level.add_rooms(second_room)
level.add_rooms(third_room)
level.add_rooms(fourth_room)


level.start
user