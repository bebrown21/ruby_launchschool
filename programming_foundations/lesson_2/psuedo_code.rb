# START start of the program
# SET sets a variable we can use for later
# GET retrieve input from user
# PRINT displays output to user
# READ  retrieve value from variable
# IF / ELSE IF / ELSE show conditional branches in logic
# WHILE show looping logic
# END end of the program


# START

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value within numbers collection at space 1

# WHILE iterator < length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number

#   iterator = iterator + 1

# PRINT saved_number

# END

def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num  # assign to first value
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

# a method that returns the sum of two integers (casual & formal)

# ask the user for two integers
# save those integers into two separate variables
# change those two strings into integers
# add them together
# print the result

# START

# GET two integer inputs from the user

# SET the first input = number1
# SET the second input = number2

# READ number1 and number2 as integers not strings
# SET result = number1 + number2 
# PRINT result

# a method that takes an array of strings, and returns a string 
# that is all those strings concatenated together

# take the first element in the array
# save it as a variable 
# take the next element in the array
# add them together
# repeat until the array is empty
# print the result

# START

# READ the first element in the array 
# SET element1 = word
# READ element2 + word
# SET these two elements = word UNTIL array.empty? == true
# PRINT word to the user

# a method that takes an array of integers, and 
# returns a new array with every other element

# loop through an array
# add the element of index + 2 into a new array
# print the new array

# START

