# Block
# Everything in ruby is object EXCEPT block
# a block MUST be attached to a method call.
# a block is NOT an argument/parameter to the method
# do NOT add "Return" which triggers error
# Methods vs Blocks
# a block will only be called once, and disappear
#

def sayHello
  yield
  puts "This is my greeting"
end

sayHello {
  puts "Good morning!"
}