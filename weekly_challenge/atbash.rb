# Atbash encodes a string by substituting the first letter for the last
class Atbash
  CHAR_KEY = { 'a' => 'z', 'b' => 'y', 'c' => 'x', 'd' => 'w', 'e' => 'v',
               'f' => 'u', 'g' => 't', 'h' => 's', 'i' => 'r', 'j' => 'q',
               'k' => 'p', 'l' => 'o', 'm' => 'n',
               '1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5',
               '6' => '6', '7' => '7', '8' => '8', '9' => '9', '0' => '0'
              }.freeze

  def self.encode(string)
    arr = string.downcase.delete(' ').split('')
    str = arr.map { |char| CHAR_KEY.key(char) || CHAR_KEY.values_at(char) }.join
    str.scan(/.{5}|.+/).join(' ')
  end
end
