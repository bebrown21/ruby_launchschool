person = {name: 'Bob', occupation: 'web developer', 
          hobbies: 'painting'}
person.each_key { |key| puts key }
person.each_value { |value| puts value }
person.each { |key, value| puts "The opposite of #{key} is #{value}" }