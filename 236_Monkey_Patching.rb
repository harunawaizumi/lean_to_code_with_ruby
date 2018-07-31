# Monkey patching
# the process of replacing methods with updated, "fixing" methods for the original.
# 1. Keep a reference to the original object
# 2. Replace it with a function of the same name on the same object
# 3. Order the old method and new functionality are run in

# Ruby essentially combines all of the class definition into one
# before it does any of this kind
# You can change definition in Ruby later.

class Monkey
  def initialize(name, age)
    @name = name
    @age = age
  end

  def say
    "Good morning"
  end
end

m1 = Monkey.new("MonMon", 25)
puts m1.say

class Monkey
  def monkey_say
    "Uha Uha"
  end
end

puts m1.monkey_say
