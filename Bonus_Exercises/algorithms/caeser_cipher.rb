# Write a function that takes a message and an increment amount.
# Output the same letters shifted by that amount in the alphabet.
# Assume lowercase and no punctuation.
# Preserve spaces.
class Caesar_Cipher
  attr_writer :result
  attr_reader :alphabets

  def initialize
    @result = ""
    @alphabets = ('a'..'z').to_a
  end

  def caesar_cipher(string, shift)
    letters = string.chars
    letters.each do |letter|
      if @alphabets.include? letter
        @result += @alphabets[get_cipher_index(letter, shift)]
      else
        @result += letter
      end
    end
    puts @result
  end

  private
  def get_cipher_index(letter, shift)
    index = @alphabets.index(letter) + shift
    (index -= @alphabets.length) if index > @alphabets.length
    index
  end

end

run = Caesar_Cipher.new
run.caesar_cipher('asdf asdf', 13)

run = Caesar_Cipher.new
run.caesar_cipher('abc', 0)

run = Caesar_Cipher.new
run.caesar_cipher('hello', 4)