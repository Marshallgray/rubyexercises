customers = [{ "Name" => "Marshall", "Starsign" => "Gemini", "Age" => "23", "Address" => "8 Bushland Place", "Height" => "6 foot 1"},
  { "Name" => "Billy", "Starsign" => "Virgo", "Age" => "33", "Address" => "6 Green St", "Height" => "5 foot 1"},
  { "Name" => "Bob", "Starsign" => "Cancer", "Age" => "26", "Address" => "10 Bushland Place", "Height" => "5 foot 6"}]

customers.each do |customer|
  puts customer["Name"]
  puts customer["Starsign"]
  puts customer["Age"]
  puts customer["Address"]
  puts customer["height"]
  puts "=" * 15
end
