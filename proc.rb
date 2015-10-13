my_proc = Proc.new {puts "Hi!!!"}

my_proc.call

my_proc = proc {puts "Hi!!!"}

my_proc.call

my_lambda = lambda {puts "Hello lambda!"}

my_lambda.call