module AppStore
  App = Struct.new(:name, :developer, :version)

  APPS = [
      App.new(:Chat, :facebook, 2.0),
      App.new(:Twitter, :twitter, 5.8),
      App.new(:Weather, :yahoo, 10.15)
  ]

  def self.find_app(name)
    APPS.find { |app| app.name == name }
  end
end


class Animal
  def set_speed(value)
    @speed = value
  end

  def walk
    set_speed 5
  end
end

class Dog < Animal
  def run
    self.set_speed 10
  end
end
