# extend the Dog class with the check_dog method.

# class Dog
#   attr_reader :name, :vaccinated, :wormed

#   def initialize(name, age, breed, vaccinated, wormed)
#     @name = name
#     @age = age
#     @breed= breed
#     @vaccinated = vaccinated
#     @wormed = wormed
#   end
   
#   def check_dog
#     if vaccinated && wormed
#       p "#{name} can be accepted"
#     elsif vaccinated || wormed
#       p "#{name} can only be accepted by itself"
#     else 
#       p "#{name} can not be accepted"
#     end
#   end
# end

# Dog.new("Spot", 5, "Labrador", true, false).check_dog
# Dog.new("Skippy", 10, "Poodle", true, true).check_dog
# Dog.new("Rogue", 5, "Husky", false, false).check_dog

# ---------------------------------------------------------------------

# class Guesser
#   def initialize(number, lives)
#     @number = number
#     @lives = lives
#   end
  
#   def guess(n)
#     throw "You ran out of lives" if @lives == 0
#     return true if n == @number
#     @lives -= 1
#     return false
#   end
# end

#--------------------------------------------------------------------------

# def valid_parentheses(string)
#   return false unless string.count(")") == string.count("(")
#   parenth = 0
  
#   string.split("").each do |letter|
#     parenth += 1 if letter == "("
#     parenth -= 1 if letter == ")"
#     p parenth
#     return false if parenth < 0
#   end
  
#   true
# end

# p valid_parentheses("()()()")
# p valid_parentheses("))((")
# p valid_parentheses("((()))")

#------------------------------------------------------------------------------

