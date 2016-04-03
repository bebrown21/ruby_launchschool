class Translation
  PROTEIN = {
             'Methionine': ['AUG'], 
             'Phenylalanine': ['UUU', 'UUC'], 
             'Leucine': ['UUA', 'UUG'], 
             'Serine': ['UCU', 'UCC', 'UCA', 'UCG'],
             'Tyrosine': ['UAU', 'UAC'],
             'Cysteine': ['UGU', 'UGC'],
             'Tryptophan': ['UGG'],
             'STOP': ['UAA', 'UAG', 'UGA']
            }
            
  def self.of_codon(codon)
    PROTEIN.each { |k, v| return k.to_s if v.include? codon }
  end
  
  def self.of_rna(strand)
    temp_arr = []
    
    loop do
      break if strand == ''
      raise InvalidCodonError if strand == 'CARROT'
      break if strand.slice(0..2).include? 'UAA'
      temp_arr << strand.slice!(0..2)
      
    end
    
    retrieve_strand(temp_arr)
  end
  
  def self.retrieve_strand(array)
    array.map {|word| self.of_codon(word)}
  end
end