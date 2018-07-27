# Difference between "Load" and "Require" to load a file

# Difference1
# Load can NOT skip extension
# Require can skip extension
puts "This is the beginning!"

load "end.rb"
load "./end.rb" # "load" needs extension


# Difference2
# Load can be call multiple times
# Require can call only one time in the same file


load "./call_load.rb"
load "call_load.rb"
load "call_load.rb"
require "./call_require.rb" # "require" does NOT need extension
require "./call_require.rb"
require "./call_require.rb"

# Difference 3
# Load need to call in a relative path from the current directory
# require No need to call in a relative path(absolute path is also available)