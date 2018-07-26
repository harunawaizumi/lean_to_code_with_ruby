# Block is not an object
# Block can't have a method called on it.
# Proc is an object.
#
# Proc.new
# まとまったデータがあって、それをいくつか変更させたい時
#
cubes = Proc.new { |number| puts number ** 3 }
a = [1, 2, 3, 4, 5]

a_cubes = a.map(&cubes) # &: procを実行する
b_cubes = a.map(&cubes)

a_cubes
b_cubes

to_tax10 = Proc.new { |curr| curr * 1.1 }
to_tax20 = Proc.new { |curr| curr * 1.2 }

p a.map(&to_tax10)
p a.map(&to_tax20)

ages = [10, 60, 92, 30]
is_old = Proc.new do |age|
  age > 60
end

is_young = Proc.new do |age|
  age < 30
end
p ages.select(&is_old)
p ages.select(&is_young)

def test_block
  puts "hello"
  yield "Haruna"
  puts "good"
end

test_block do |name|
puts "this is test... #{name}"
end

def test_block
  puts "hello"
  yield "Ryusei"
  puts "good"
end

test_block2 do
  puts "name :"
  yield ["haruna", 28]
  puts "age :"
end

test_block2 do |name, age|
  puts "this is #{name}"
  puts "this is #{age}"
end