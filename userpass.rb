class Command
	attr_accessor :answer_user, :answer_pass
	attr_accessor :choose_what

	def initialize
		puts">>>"
		@username = "Alvaro"
		@password = IO.read("password.txt")
	
	end

	def ask_credencials
		puts "Enter your username"
		@answer_user = gets.chomp
		puts "Enter your password"
		@answer_pass = gets.chomp
		process
	end

	def process
		if (@answer_user == @username && @answer_pass == @password)
			choose_what
		else 
			puts "something went wrong"
			ask_credencials
			
		end
	end

	def count_words
		puts @user_text.split.size
	end

	def count_letters
		puts @user_text.split.join.length
	end

	def reverse_letters
		puts @user_text.reverse
	end

	def to_upcase
		puts @user_text.upcase
	end

	def lower_case
		puts @user_text.downcase
	end
	
	def choose_what
		puts "what do you want to do with your text?" 
		@user_text = gets.chomp
		puts "Choose between these options: count words, count letters, reverse letters, upcase letters or downcase letters"
		@which = gets.chomp.upcase
		if @which == "count words".upcase
			count_words
		elsif @which == "count letters".upcase
			count_letters
		elsif @which == "reverse letters".upcase
			reverse_letters
		elsif @which == "upcase letters".upcase
			to_upcase
		elsif @which == "downcase letters".upcase
			lower_case
		else
			puts "Choose one more time"
			@which = gets.chomp.upcase
		end

	end
end

command = Command.new
command.ask_credencials
