def to_currency(num)
  new_num = sprintf('%.2f', num)
  ending = new_num.slice!(-3..-1)
  beginning = new_num.slice(0..-1)
  
  beginning = beginning.reverse.scan(/\d{1,3}/).join(',').reverse
  result = beginning << ending
  p "$" + result
end





to_currency("100000")       # => "$100,000.00"
to_currency("3456789879.1") # => "$3,456,789,879.10"
to_currency("12343.43")     # => "$12,343.43"
to_currency("12343.100")    # => "$12,343.10"
to_currency("12343.996")    # => "$12,344.00"