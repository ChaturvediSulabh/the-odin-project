=begin
What?: implement a caeser cipher that takes in a string and the shift fator and then, outputs the modified string
How?:
- Class
  - methods
    - initialize: an array of all alphabets
    - caesar_cipher(string, shift_number)
=end

class BasicCryptography
  attr_accessor :aplphabets

  def initialize
    @alphabets = ('a'..'z').to_a
  end

  def isChar(ch)
    !ch.match(/\A[a-zA-Z]*\z/).nil?
  end

  def caesar_cipher(some_string, shift_by)
    some_string.each_char do |elem|
      if isChar(elem) == false
        next
      end
      new_elem = ""
      index = (@alphabets.index(elem)).to_i
      if index < @alphabets.length - shift_by
        new_elem = @alphabets[index + shift_by]
      else
        num = index - (@alphabets.length - shift_by)
        new_elem = @alphabets[num]
      end
      some_string = some_string.gsub(elem, new_elem)
    end
    puts some_string
  end

end

myObj = BasicCryptography.new
myObj.caesar_cipher("what is your name?", 5)