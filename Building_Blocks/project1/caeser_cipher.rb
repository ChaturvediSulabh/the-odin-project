class BasicCryptography

  def initialize
    @lalphabets = ('a'..'z').to_a
    @calphabets = ('A'..'Z').to_a
  end

  def caesar_cipher(some_string, shift_by)
    alphabets = []
    new_string = []
    new_elem = ""

    some_string.chars.uniq do |elem|
      if @calphabets.include? elem
        alphabets = @calphabets
      elsif @lalphabets.include? elem
        alphabets = @lalphabets
      else
        new_elem = elem
        new_string.push(new_elem)
        next
      end

      index = (alphabets.index(elem)).to_i
      if index < alphabets.length - shift_by
        new_elem = alphabets[index + shift_by]
      else
        num = index - (alphabets.length - shift_by)
        new_elem = alphabets[num]
      end
      new_string.push(new_elem)
    end

    puts new_string.join('')

  end

end