# hello
animals = ['cat', 'dog', 'cow']
first_animal = animals[0]
second_animal = animals[1]

multi_array = [[a,g,b],[1,f]]
item = multi_array[1][0]

animals.each_with_index do |animal, index|
  puts (index + 1).to_s + ':' + animal
end

# this is a new line of code
# This is the change I want to see on github repository