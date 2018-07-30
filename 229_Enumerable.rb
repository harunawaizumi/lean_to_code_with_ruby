# private: can't call this method from outside of the object, only within the object.
# protected: 1. can be invoked only by objects of the same class.
# protected: 2. can be called within the same family of objects.
# protected: 3. used to compare objects of the same class
# puts g1.value <- can NOT call in private and protected
# but it can use the private value inside ot the method
# sudo variable: modifications of instance variables
# instance methods is better to instance variables
#
class Gadget

  attr_reader :production_number
  attr_accessor :username, :password, :email

  def initialize(username, password, email)
    @username = username
    @password = password
    @email = email
    @value = 5000
    @production_number = "#{("a".."z").to_a.sample} - #{rand(1..999)}"

  end

  def to_s
    "Gadget #{@production_number} has the username #{@password},
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}."
  end

  def password=(new_password)
    @password = new_password  if validate_password(new_password)
  end

  def email=(new_email)
    @email = new_email if validate_email(new_email)
  end

  def value # because it might change later ?
    @value = @value / 1000
  end

  def say_value
    "Hello #{value}"
  end


  protected

  def generate_public
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits} - #{middle_digits} - #{end_digits}"
  end


  def compare_car_with(car)
    self.value > car.value ? "Your car is better!" : "Your car is worse!"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end

  def validate_email(new_email)
    new_email.is_a?(String) && new_email.include?("@") && new_email.length > 5
  end

  def reset(username, password)
    @username = username # ? not self.username self refers to its instance
    @password = password # ? not self.password
  end
end

g1 = Gadget.new("Haruna", "haruna510", "haruna@gmail.com")
g1.password = "39048df90510"
puts g1.email
puts g1.password
puts g1.say_value

