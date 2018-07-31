class Pay
  @@shared_count = 0 # sigil: class variables
  @@maker = "LINE"

  # a process runs whenever a new instance is instantiated.
  def initialize
    @count = 0
    @@shared_count += 1
  end
  def pay
    @count += 1
  end

  def self.shared_count # class methods are prefixed with self keyword.
    @@shared_count += 1
  end

  def maker
    "#{@@maker} is producing"
  end
end

p Pay.shared_count
p1 = Pay.new
p1.pay
p2 = Pay.new
p2.pay
p3 = Pay.new
p3.pay
p Pay.shared_count
puts p1.pay
puts p2.pay
puts p3.pay
