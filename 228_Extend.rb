# include: inherit method thought creating instance
# extend: inherit method directly from the class level rather than from the instance level.

module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  include Announcer
end

class Cat
  extend Announcer
end

d1 =  Dog.new
p d1.who_am_i
p Cat.who_am_i