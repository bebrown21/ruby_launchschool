def select(array)
  counter = 0
  temp_arr = []
  
  while counter < array.size
    if yield(array[counter])
      temp_arr << array[counter]
    end
    counter += 1
  end
  
  temp_arr
end

array = [1, 2, 3, 4, 5]
select(array) { |num| num.odd? }
select(array) { |num| puts num }
select(array) { |num| num + 1 }

# Book solution

def select(array)
  counter = 0
  result = []

  while counter < array.size
    current_element = array[counter]
    result << current_element if yield(current_element)
    counter += 1
  end

  result
end