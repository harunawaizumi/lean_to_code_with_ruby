# try to reduce the probability of error and tory to adjust

class Candidate
  attr_accessor :name, :age, :hobby
  def initialize(name, details = {})
    defaults = {age: 35, hobby: 'cafe'}
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @hobby = defaults[:hobby]
  end
end

senator = Candidate.new("Haruna", age: 28, hoby: "piano") # hoby doesn't exist so it uses default value instead.
puts senator.age
puts senator.hobby