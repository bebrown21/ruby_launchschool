# #Question 1

# if false
#   greeting = “hello world”
# end

# greeting

# # greeting is nil here, and no "undefined method or local variable" 
# # exception is thrown. Typically, when you reference an uninitialized 
# # variable, Ruby will raise an exception, stating that it’s undefined. 
# # However, when you initialize a local variable within an if block, 
# # even if that if block doesn’t get executed, the local variable is 
# # initialized to nil.

# # Question 2

# # greetings = { a: 'hi' }
# # informal_greeting = greetings[:a]
# # informal_greeting << ' there'

# # puts informal_greeting  #  => "hi there"
# # puts greetings

# The output is {:a=>"hi there"}. The reason is because informal_greeting 
# is a reference to the original object. 
# The line informal_greeting << ' there' was using the 
# String#<< method, which modifies the object that called it. 
# This means that the original object was changed, thereby impacting 
# the value in greetings. If instead of modifying the original object, 
# we wanted only modify informal_greeting but not greetings, 
# there are a couple of options:

# we could initialize informal_greeting with a reference to a new object 
# containing the same value by informal_greeting = greetings[:a].clone.
# we can use string concatenation, informal_greeting = 
# informal_greeting + ' there', which returns a new String object 
# instead of modifying the original object.

# # Question 3

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"         #=> "one is: one"
# puts "two is: #{two}"         #=> "two is: two"
# puts "three is: #{three}"     #=> "three is: three"

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"           
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"         #=> "one is: one"
# puts "two is: #{two}"         #=> "two is: two"
# puts "three is: #{three}"     #=> "three is: three"


# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"        #=> "one is: two"
# puts "two is: #{two}"        #=> "two is: three"
# puts "three is: #{three}"    #=> "three is: one"

# Questions 4

# def generate_UUID
#   characters = [] 
#   (0..9).each { |digit| characters << digit.to_s }
#   ('a'..'f').each { |digit| characters << digit }

#   uuid = ""
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, index|
#     section.times { uuid += characters.sample }
#     uuid += '-' unless index >= sections.size - 1
#   end

#   uuid
# end

# p generate_UUID

# Question 5

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false unless dot_separated_words.size == 4

#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_a_number?(word)
#   end

#   true
# end

