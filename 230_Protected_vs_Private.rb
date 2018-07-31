# Protected
# methods can be called by any instances created by that class or its subclasses
# Private
# methods can be called only from within the calling object.


class Animal
  # it can't be called in instances in Neither protected nor private
  #

  def initialize
    @value = 'hello'
  end

  protected # private is not working
 def value
   @value + ' everyone'
 end

  public
  def walk
    "walking now"
  end
end

class Dog < Animal # Dog is a subclass of Animal
  def vow
    "vow vow..." + self.value
  end

end

# d1 = Animal.new
# puts d1.walk
d2 = Dog.new
puts d2.vow