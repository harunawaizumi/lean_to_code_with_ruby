# Inheritance
# obtain all methods from another class to avoid duplicated code
# The class inherited from is 'superclass' or 'parent class'
# The class that inherits is 'subclass' or 'child class'

# The relationship between class and super class is is-a relationship.

class Employee
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I'm #{age} years old."
  end
end

class Manager < Employee

end

class Worker < Employee
  attr_accessor :time

  # You need to initialize instance variable.
  # if you are sick of writing code for these definition every time, you can use the word 'super' instead.
  def initialize(name, age)
   super
    @time = 1000
  end

  def yell
    "#{name} is yelling"
  end

end

bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 36)

puts bob.is_a?(Manager)
puts dan.is_a?(Worker)
puts bob.is_a?(Object)
puts bob.is_a?(BasicObject)

puts dan.instance_of?(Object)
puts dan.instance_of?(BasicObject)
puts dan.age

