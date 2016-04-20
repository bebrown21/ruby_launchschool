words = ['laboratory', 'experiment', 'Pans',
         'Labyrinth', 'elaborate', 'polar bear']

words.each do |words|
  if words =~ /lab/ then p "#{words}" end
end