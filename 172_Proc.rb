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

p a_cubes
p b_cubes

# yield
# custom or exclusive functionality
# block replace the yield keyword in the method definition
def test_block
  puts "hello"
  yield "Haruna"
  puts "good"
end

test_block do |name|
  puts "this is test... #{name}"
end

