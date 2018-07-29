class Gadget2
  # write the code for getter&setter takes time
  # accessor is the syntactical shortcut
  attr_reader :username, :production_number, :password
  attr_writer :password, :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample} - #{rand(1..999)}"
  end
end

phone = Gadget2.new("haruna", "123")
p phone.username
phone.password = "secretegentmae"
p phone.password

# 220