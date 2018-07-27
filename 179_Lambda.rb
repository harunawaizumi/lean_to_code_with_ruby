# Lambda is almost the same as Proc
# SAME1: call the same way

power_lambda = lambda{ |num1, num2| num1 * num2 }
power_proc = lambda { |num1, num2| num1 * num2 }

p power_lambda.call(5, 10)
p power_proc.call(5, 10)

# DIFFERENCE1:
# Proc is NEVER returning the word back control to method
def sports1
  status = Proc.new { return "Let's start running1"}
  status.call
  "Let's do work-out1!"
end

puts sports1

# Lambda is returning the word back control to method

def sports2
  status = lambda { return "Let's start running2!"}
  status.call
  "Let's do work-out2!"
end

puts sports2

# DIFFERENCE2
# proc doesn't care how many arguments it has
# lambda requires all arguments
intro_proc = Proc.new { |name, age| puts "My name is #{name} at the age of #{age}"}
intro_lambda = lambda { |name, age| puts "My name is #{name} at the age of #{age}"}

intro_proc.call("haruna")
intro_lambda.call("haruna", 28)

