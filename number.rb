def number(num1)
  if num1 > 100
    puts "number is greater than 100"
  elsif num1 < 100 && num1 > 50
    puts "number is between 51 - 100"
  else 
    puts "number is between 0 - 50"
  end
end

puts number(50)