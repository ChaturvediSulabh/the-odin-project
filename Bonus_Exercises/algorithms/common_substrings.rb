# Write a function that takes two strings.
# Return the longest common substring.
class Longest_Substr
  attr_writer :common_substrs

  def initialize
    @common_substrs = []
  end

  def common_substrings(string_one, string_two)
    all_substrs_one =  get_all_sbstrs(string_one)
    all_substrs_two =  get_all_sbstrs(string_two)

    all_substrs_one.each do |elem|
      is_common =  all_substrs_two.include? elem
      it_exists = @common_substrs.include? elem
      @common_substrs << elem if (is_common == true && it_exists == false)
    end
    puts @common_substrs.max_by { |e| e.length }
  end

  private
  def get_all_sbstrs(my_string)
    indices = (0...my_string.length).to_a
    return indices.product(indices).map{|i,j| my_string[i..j]}.uniq
  end
end

run = Longest_Substr.new
run.common_substrings('Hello', 'Hello World')

run = Longest_Substr.new
run.common_substrings('ABABC', 'BABCA')