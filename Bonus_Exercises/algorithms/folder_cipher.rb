# Implement the Folding Cipher.
# It folds the alphabet in half and uses the adjacent letter.
# a -> z, b -> y, c -> x, m -> n, etc...
class Folding_Cipher
  attr_reader :asc_alphabets, :dsc_alphabets
  attr_writer :cipher

  def initialize
    @asc_alphabets = ('a'..'z').to_a
    @dsc_alphabets = @asc_alphabets.reverse()
    @cipher = ''
  end

  def folding_cipher(string)
    string.chars.each do |char|
      @cipher += @dsc_alphabets[@asc_alphabets.index(char)]
    end
    @cipher
  end
end

run = Folding_Cipher.new
print run.folding_cipher('zyxn')