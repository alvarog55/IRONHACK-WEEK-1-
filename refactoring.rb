require "date"

class User
	attr_accessor :name, :email, :token
	def initialize(name, email)
	@name = name
	@email = email
	@token = ""


class Token
	attr_accessor :value, :expiration
	def initialize(value, expiration, user)
		@value = value
		@expiration = expiration
		@user = user

end

	def add_token
	 	@user.token = value



class Validator 
	
	def initialize(user, token)
		@user = user
		@token = token



	def token_value(value)
		@value = 12345
		


	def token_expiration(date)
		@date = Date.new(2015,12,12)


	def is_valid?(user)
		if Date.today < token_expiration && @token == token_value
	


user1 = User.new("alvaro", "alvaro@gmail.com")
my_token = Token.new(12345,Date.new(2015-12-12))
user1_validated = Validator.new(user1,my_token.add_token)

