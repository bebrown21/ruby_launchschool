# class Person
  
# end

# bob = Person.new
# bob.name = 'bob'

# bob.name

# Error: Undefined method 'name='
# Why 'name='and not just 'name'
# Because it's actually writtin like this...

class Person
  
  def name=(new_name)
    @name = new_name
  end
end

bob = Person.new
p bob.name=('bob')  # 'name=' is actually a setter method

# Study self and symbols
# puts calls to_s, p calls .inspect
# return vs output 