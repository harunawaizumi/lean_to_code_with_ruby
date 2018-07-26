# Same as other syntax

# Loop (vs array)

cap_arr = ["a", "e", "i", "o", "u"]

cap_arr.each do |item|
  puts "This is #{item}"
end

cap_hash = {
    a: 'aaa',
    b: 'bbb',
    c: 'ccc',
    d: 'ddd'
}

# way 1
puts "way 1"
cap_hash.each do |key, value|
  puts "key: #{key}, value: #{value}"
end

# way 2
cap_hash.each_pair do |key, value|
  puts "key: #{key}, value: #{value}"
end

# way 3
cap_hash.each do |item|
  puts item[0]
  puts item[1]
end

# way 4
cap_hash.each_key do |key|
  puts "#{key}"
end

# way 5
cap_hash.each_value do |value|
  puts "#{value}"
end

# Create Hash with default value

# way 1 : create instance with default value
fruit_prices1 = Hash.new("Not found")
p fruit_prices1[:steak]

# way 2 : use method to set default

fruit_prices2 = {}
fruit_prices2.default = "Nor found"
p fruit_prices2[:steak]
