arr = [1, 2, 3, 4, 5, 6, 7 ,8, 9, 10]
new_arr = []
arr.select {|number| new_arr << number if number % 2 != 0}
p new_arr