# p "hello".class   #=>String
# p "world".class   #=>String

#------------------------------------#

# class GoodDog
# end

# sparky = GoodDog.new

#-------------------------------------

# module Speak
#     def speak(sound)
#         puts "#{sound}"
#     end
# end

# class GoodDog
#     include Speak
# end

# class HumanBeing
#     include Speak
# end

# sparky = GoodDog.new
# sparky.speak("Arf!")
# bob = HumanBeing.new
# bob.speak("Hello!")

# puts "---GoodDog ancestors---"
# puts GoodDog.ancestors
# puts ''
# puts "---HumanBeing ancestors---"
# puts HumanBeing.ancestors

#-------------------------------------

# Exercises

# class Boy
# end

# joe = Boy.new
# p joe.object_id

#--------------------------------------

# module Poop
#     def poop(size)
#         puts "That poop is #{size}!"
#     end
# end

# class Boy
#     include Poop
# end

# joe = Boy.new
# joe.poop("Huge")

#----------------------------------------
# Exercises

# class MyCar
#     attr_accessor :color              #this allows read/write (getting and setting)
#     attr_reader :year, :model                 #this allows only reading (getting)
    
#     def initialize(year, color, model)
#         @year = year
#         @color = color
#         @model = model
#         @speed = 0
#     end
    
#     def speed_up(num)
#         @speed += num
#         puts "You push the gas and accelerate #{num} mph."
#     end
    
#     def brake(num)
#       @speed -= num
#       puts "You push the brake and decelerate #{num} mph."
#     end
    
#     def speed
#         puts "You're speed is #{@speed} mph"
#     end
    
#     def turn_off_car
#       @speed = 0 
#     end
    
#     def spray_paint(color)
#         self.color = color
#         puts "Your new #{color} paint job looks great!"
#     end
    
#     def self.gas_mileage(gallons, miles)
        
#       puts "Your your mpg is #{miles / gallons}" 
#     end
    
#     def to_s
#       puts "My car's #{color}, #{model}, #{year}" 
#     end
  
# end

# car = MyCar.new(2015, "red", "Mazda")
# # puts car.speed_up(20)
# # puts car.speed_up(80)
# # puts car.brake(80)
# # puts car.speed
# # puts car.turn_off_car
# # puts car.speed
# car.spray_paint("blue")
# puts car.color
# puts car.year
# MyCar.gas_mileage(25, 500)
# puts car

#-------------------------------------------------------------

# class Animal
#     def speak
#         "Hello!"
#     end
# end

# class GoodDog < Animal
#     def speak
#         super + " from GoodDog class"
#     end
# end

# sparky = GoodDog.new
# p sparky.speak

#--------------------------------------------------------

# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end
    
#   class Cat
#     def say_name(name)
#       p "#{name}"
#     end
#   end
# end

# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new
# buddy.speak('Arf')
# kitty.say_name('Kitty')

#-----------------------------------------------------
# module Towable
#   def can_tow?(pounds)
#     pounds < 10000 ? true : false
#   end
# end

# class Vehicle
#   attr_accessor :color
#   attr_reader :model, :year
#   @@number_of_vehicles = 0

#   def initialize(year, model, color)
#     @year = year
#     @model = model
#     @color = color
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the gas and accelerate #{number} mph."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and decelerate #{number} mph."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_down
#     puts "Let's park this bad boy!"
#   end

#   def self.gas_mileage(gallons, miles)
#     puts "#{miles / gallons} miles per gallon of gas"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "You new #{color} paint job looks great!"
#   end
  
#   def age
#     "Your #{self.model} is #{years_old} years old."
#   end
  
#   private
  
#   def years_old
#     Time.now.year - self.year
#   end
# end

# class MyCar < Vehicle
#   NUMBER_OF_DOORS = 4

#   def to_s
#     "My car is a #{self.color}, #{self.year}, #{self.model}!"
#   end
# end

# class MyTruck < Vehicle
#   include Towable

#   NUMBER_OF_DOORS = 2

#   def to_s
#     "My truck  is a #{self.color}, #{self.year}, #{self.model}!"
#   end
# end

# puts "----MyCar Lookup----"
# p MyCar.ancestors
# puts "----MyTruck Lookup----"
# p MyTruck.ancestors
# puts "----Vehicle Lookup----"
# p Vehicle.ancestors

#----------------------------------------------------------------------------

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end


joe = Student.new("joe", 99)
bob = Student.new("bob", 75)

puts "well done" if joe.better_grade_than?(bob)