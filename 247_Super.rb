# Super
# 1. without parentheses
# 2. with parentheses but no arguments
# 3. with parentheses and with these arguments

class Car
  attr_reader :maker
  def initialize(maker)
    @maker = maker
  end

  def drive
    "Room! Room!"
  end
end

class Firetruck < Car
  def drive(speed) #send one argument to up there.
    # super(): do NOT pass anything up top
    # super: means super(speed). but super class doesn't have parentheses so it causes error.
    super() + " Beep! Beep! at #{speed} miles per hour"
  end
end

ft = Firetruck.new("GM")
p ft.drive(500)

class SmallTruck < Car
  attr_accessor :maker, :sirens

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " this is a small car but running at #{speed} miles per hour"
  end
end

s1 = SmallTruck.new("GM", 100)
s1.drive(500)