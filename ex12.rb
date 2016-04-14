class Customer

  def intialize(customer_details)
    @cust = customer_details
  end

  def happy
      puts "I am very very very happy"
  end

  def print_customer_details()
    puts "Customer details:"
    puts "Name: #{@cust['name']}"
    puts "Starsign: #{@cust['starsign']}"
    puts "Age: #{@cust['age']}"
    puts "=" * 15
  end

  def update_customer_name(new_name)
    @cust['name'] = new_name
  end
end

pedro = Customer.new({ "name" => "Pedro", "starsign" => "Taurus", "age" => 21 })
billy = Customer.new({ "name" => "Billy", "starsign" => "Gemini", "age" =>32 })

smith = { "name" => "Smith", "starsign" => "Aquarius", "age" => 32 }


Hash, key value example
[
{
  name(Key) => "John"(value),
  address => "23 Heroes Ave"
},
{
  name => "Sally"
  address => "23 Heroes Ave"
}
]




puts "Welcoe to customer central"
puts "Here are the current customers."

customers = [pedro,billy]
customers.each do |customer|
  customer.print_customer_details()
end

puts "\n\n"
puts "Woul you like to change a customer name? Y/N"
print ">"
answer = gets.chomp

if answer == "Y"
  puts "which customer would you like to update? Pedro (1) or Jake (2)"
  which_customer = gets.chomp.to_i
  puts "What is the new name?"
  print ">"
  new_name = gets.chomp
  customers[which_customer - 1].update_customer_name(new_name)
  puts "Customer updated!"
  puts customers[which_customer - 1].print_customer_details()
end
