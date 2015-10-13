class Employee 
	
	attr_accessor :type, :base_salary, :hours, :rate_hours, :payroll, :compa
	
	def initialize(type, base_salary, hours, rate_hours, contact)
		@base_salary = base_salary
		@hours = hours
		@rate_hours = rate_hours

	end

	def calculate_payroll
		@base = base_salary
		@hour = hours * rate_hours
		@baseplushour = base_salary + hours * rate_hours
	end
	
	def send_payroll(payroll)
		@payroll.each {|name, payroll| puts "Hi, #{key}! We communicate to you that your payroll is #{payroll}"}
		
	end
end	

alfredo = Employee.new("base",1000, 0, 0, "@AlfredoCasado")
juan = Employee.new("hour",0, 40, 50, "juan@gmail.com")
steven = Employee.new("hour",0, 50, 50, 605242478)
peter = Employee.new("baseplushour", 1000, 10, 40, "peter@gmail.com")

@payroll = Hash.new
@payroll[:alfredo] = alfredo.calculate_payroll
@payroll[:juan] = juan.calculate_payroll
@payroll[:steven] = steven.calculate_payroll
@payroll[:peter] = peter.calculate_payroll

print "List of payrolls #{@payroll}"

send_payroll



