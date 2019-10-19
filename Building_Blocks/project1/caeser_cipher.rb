=begin
What?: implement a caeser cipher that takes in a string and the shift fator and then, outputs the modified string
How?:
- Class
  - methods
    - initialize: an array of all alphabets
    - caesar_cipher(string, shift_number)

  TO FIX -
  Do Not Replace what's already replaced

  Handle -
  - Upper Case and Lower Case Chars
  - Don't change the position or Char in a string
  - Ignore Special Char
=end

class BasicCryptography
  attr_accessor :aplphabets

  def initialize
    @lalphabets = ('a'..'z').to_a
    @calphabets = ('A'..'Z').to_a
  end

  def caesar_cipher(some_string, shift_by)
    alphabets = []
    some_string.chars.uniq do |elem|
      if ('A'..'Z').include? elem
        alphabets = @calphabets
      elsif ('a'..'z').include? elem
        alphabets = @lalphabets
      else
        next
      end
      new_elem = ""
      index = (alphabets.index(elem)).to_i
      if index < alphabets.length - shift_by
        new_elem = alphabets[index + shift_by]
      else
        num = index - (alphabets.length - shift_by)
        new_elem = alphabets[num]
      end
      print "replace #{elem} with #{new_elem} : "
      some_string = some_string.sub(elem, new_elem)
      puts some_string
    end
    puts some_string
  end

end

myObj = BasicCryptography.new
myObj.caesar_cipher("What a string!", 5)