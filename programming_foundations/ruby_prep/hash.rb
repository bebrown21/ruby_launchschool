hash = {a:1, b:2, c:3, d:4}
p hash[:b]

hash[:e] = 5
p hash

hash.each {|key, value| hash.delete(key) if value > 3.5}
p hash