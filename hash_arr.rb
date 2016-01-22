arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr_new = arr.map { |word| word.split }
p arr_new.flatten