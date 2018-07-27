# get even
# way1
p [1, 2, 3, 4, 5].select{ |num| num.even? }
# way2
p [1, 2, 3, 4, 5].select(&:even?)

# get odd
# way1
p [1, 2, 3, 4, 5].reject{ |num| num.odd? }
# way2
p [1, 2, 3, 4, 5].reject(&:odd?)

# Method with Proc

def talk_about(name, &myprc)
  puts "Let me talk about #{name}"
  myprc.call(name)
end

good_thing = Proc.new { |name|
  puts "#{name} is pretty"
  puts "#{name} is nice"
}

bad_thing = Proc.new { |name|
  puts "#{name} is ugly"
  puts "#{name} is not nice"

}

talk_about("Noriko", &good_thing) # add '&' before PROC
talk_about("Noriko", &bad_thing)