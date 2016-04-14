puts "Hello"
print "What is your name? : "
name = gets.chomp
if name == ""
  puts "You didn't enter anything! Try again"
  print "What is your name? : "
else
puts "Hello #{name}"
end
