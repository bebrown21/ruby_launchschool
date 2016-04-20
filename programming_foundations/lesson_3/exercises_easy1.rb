# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.gsub!('important','urgent')

# numbers = [1, 2, 3, 4, 5]
# p numbers.delete_at(1)
# p numbers.delete(1)

# famous_words = "seven years ago..."
# p "Four score and " + famous_words
# p famous_words.prepend("Four score and ")
# p "Four score and " << famous_words

# def add_eight(number)
#   number + 8
# end

# number = 2

# how_deep = "number"
# 5.times { how_deep.gsub!("number", "add_eight(number)") }

# p how_deep

# eval(how_deep)

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# p flintstones.flatten!

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, 
#                 "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# p flintstones.assoc("Barney")

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash