# Given an array of integers find the largest contiguous subsum.
# You can solve this trivially in O(n**2) time by considering all subarrays.
# Try to solve it in O(n) time with O(1) memory.
class Contigous_Sum
  attr_accessor :result

  def initialize
    @sum = 0
  end

  def lcs(array)
    indices = (0...array.length).to_a
    indices = indices.to_a.product(indices).reject{ |i,j| i > j || i == j }
    indices.each do |i, j|
      val = array[i] + array[j]
      puts "#{@sum} :::: #{val}"
      if val > @sum
        @sum = val
      end
    end
    # array.each_with_index do |elem, index|
    #   break if array.length == index + 1
    #   val = (elem + array[index + 1])
    #   @sum = val if @sum < val
    # end
    @sum
  end
end

run = Contigous_Sum.new
puts run.lcs([4, -1, 5, 6, -13, 2])