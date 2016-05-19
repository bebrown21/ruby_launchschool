class Cipher
  attr_accessor :key
  
  def initialize(key=nil)
    @key = key || ('a'..'z').to_a.sample(100).join
  end
  
  def encode(plaintext)
    
  end
end
