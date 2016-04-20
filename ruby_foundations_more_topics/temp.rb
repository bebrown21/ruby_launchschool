# # in temp.rb
# require 'minitest/autorun'

# class MyFirstTest < Minitest::Test
#   def test_first_test
#     assert true
#   end
# end

# class Person
#   def speak
#     "Hey!"
#   end
# end

# class Teacher < Person  #Teacher class inheriting Person class behaviors
# end

# bob = Teacher.new
# bob.speak

module Delegate
  def work 
  # allow to delegate work 
  end 
end

class Employee 
  def initialize(name, ssn) 
    @name = name
    @ssn = ssn 
  end 
end

class FullTime < Employee 
  def vacation_days 
  # Decides the appropriate amount of vacation days for this employee and returns it 
  end 
  
  def work_space 
  # Decide the appropriate work place for this employee and returns it 
  end 
end

class PartTime < Employee 
end 

class Manager < FullTime
  include Delegate
  
  def name
    "Mgr #{@name}"
  end
end

class Executive < FullTime
  include Delegate 
  
  def name
    "Exe #{@name}"
  end
end

p bob = Manager.new("bob", '123-12-1234')
p bob.name