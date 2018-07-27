# w: overwrite
File.open("novel.txt", "w") do |file|
  file.puts "Blah blah blah"
  file.puts "ahh..."
end

File.open("novel.txt", "w") do |file|
  file.puts "good morning"
  file.puts "ahh..."
end

# a:append (insert at the end of the file)
File.open("novel2.txt", "a") do |file|
  file.puts "Blah blah blah"
  file.puts "ahh..."
end

File.open("novel2.txt", "a") do |file|
  file.puts "good morning"
  file.puts "ahh..."
end

# rename the file
File.rename("novel.txt", "novel1.txt")

# make/delete the new file
File.new("now.txt", "w")
File.delete("now.txt")