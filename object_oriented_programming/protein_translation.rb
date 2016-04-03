class InvalidCodonError < StandardError
end

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
    PROTEIN.each { |key, value| return key.to_s if value.include? codon }
  end
  
  def self.of_rna(strand)
    fail InvalidCodonError if strand == 'CARROT'
    temp_arr = []
    
    loop do
      break if strand == ''
      fail InvalidCodonError if !PROTEIN.values.flatten.include? strand.slice(0..2)
      break if PROTEIN[:'STOP'].include? strand.slice(0..2)
      temp_arr << strand.slice!(0..2)
    end
    
    retrieve_strand(temp_arr)
  end
  
  private 
  
  def self.retrieve_strand(array)
    array.map {|word| self.of_codon(word)}
  end
end
