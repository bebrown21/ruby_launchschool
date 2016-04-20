class PigLatin
  
  def self.translate(string)
    string.split(' ').each do |word|
      if word =~ /^(squ|thr|sch)/
        word << word.slice!(0..2) << 'ay'
      elsif word =~ /^(ch|qu|th)/
        word << word.slice!(0..1) << 'ay'
      elsif word =~ /^([aeiouy]|(xr))/
        word << 'ay'
      else 
        word << word.slice!(0) << 'ay'
      end
    end
    .join(' ')
  end
end