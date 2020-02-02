# Write a method that finds all the unique substrings for a word.
class Substrings
  def uniq_subs(string)
    indices = (0...string.length).to_a
    indices.product(indices).map{|i, j| string[i..j]}.uniq.delete_if { |elem| elem == "" }
  end
end

run = Substrings.new
print run.uniq_subs('abcd')