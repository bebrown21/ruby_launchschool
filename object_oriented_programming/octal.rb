class Octal
  attr_reader :string_number

  def initialize(string_number)
    @string_number = string_number 
  end
  
  def to_decimal
    return 0 if string_number.match(/\D|8|9/)
    
    # Reversing number in an array to use each_with_index
    reversed_number_arr = string_number.split('').reverse.map(&:to_i)
    reversed_number_arr.each_with_index.map {|num,idx| num * 8 ** idx }.reduce(:+)
  end
end