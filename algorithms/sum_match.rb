# Take an array of integers, and integer k.
# Return all pairs that sum to k exactly.
# List the pairs in [min, max] order.
# Time complexity: O(n).
# Return a set.
class Sum
  attr_writer :result

  def initialize
    @result = []
  end

  def pair_sum(array, k)
    indices = (0...array.length).to_a
    match = []
    puts indices.product(indices).reject{ |i,j| i > j }.each{ |i,j| (match << array[i] ; match << array[j] ; @result << match ) if array[i] + array[j] == k  }
  end
end

run = Sum.new
run.pair_sum([1, 2, -1], 0)