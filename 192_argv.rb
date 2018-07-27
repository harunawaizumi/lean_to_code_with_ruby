ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number ** 2}"
end

# command: ruby 192_argv.rb 1 2 3 4
ARGV.each do |argument|
  num = argument.to_i
  puts "Power of #{num} is #{num * num}"
end