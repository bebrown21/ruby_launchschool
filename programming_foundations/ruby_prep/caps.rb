def caps(words)
  if words.length > 10 then words.upcase else words end
end

puts caps("hello there friend")