class Anagram
  def substrings(any_string, list_of_substrings)
    hash = {}
    any_string = any_string.split(" ").map{|str| str.downcase}
    list_of_substrings.map{|substr| substr.downcase}.each do |substr|
      any_string.each do |str|
        if str.include? substr
          if hash.has_key? substr
            val = hash[substr]
            val += 1
            hash[substr] = val
          else
            hash[substr] = 1
          end
        end
      end
    end
    puts hash
  end
end