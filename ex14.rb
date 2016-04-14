
require 'CSV'


class Customer
  def initialize(customer)
    @customer = customer
  end

  def print_info
    # print customer info to screen
  puts "Customer Details"
  puts "Name: #{@customer['name']}"
  puts "Email: #{@customer['email']}"
  puts "Address: #{@customer['adress']}"
  puts "Phone Number: #{@customer['phone']}"
  puts "Bank Balance: #{@customer['balance']}"
  end

  def save_to_file
    open_file = open('customers.csv','a')
    open_file.write(
      @customer['name'] +
      ', ' +
      @customer['email'] +
      ', ' +
      @customer['address'] +
      ', ' +
      @customer['phone'] +
      ', ' +
      @customer['balance'])
    open_file.write('\n')
    open_file.close
    puts "Customer has been added to file"
  end



end

def draw_lines
  puts "=" * 10
end

def draw_menu
  puts "welcome to the Bank"
  draw_lines
  puts "What would you like today?"
  draw_lines
  puts "1. Add customer"
  puts "2. See list of customers"
  puts "3. exit"
end

while true
  draw_menu
  answer = gets.chomp

if answer == '1'
  # add customer
  puts "What is the customer's name?"
  customer_name = gets.chomp
  puts "What is the customer's email?"
  customer_email = gets.chomp
  puts "What is the customer's address?"
  customer_address = gets.chomp
  puts "What is the customer's phone number?"
  customer_phone = gets.chomp
  puts "What is the customer's bank balance?"
  customer_balance = gets.chomp
  new_customer = Customer.new({"name" => customer_name, "email" => customer_email, "address" => customer_address, "phone" => customer_phone, "balance" => customer_balance})
  new_customer.print_info
  new_customer.save_to_file

elsif answer == '2'
  # see list of customers




elsif answer == '3'
  break
  end
end
