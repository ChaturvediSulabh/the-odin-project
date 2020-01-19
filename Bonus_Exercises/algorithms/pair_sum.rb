# Take an array of integers, and integer k.
# Return all pairs that sum to k exactly.
# List the pairs in [min, max] order.
# Time complexity: O(n).
# Return a set.
class Pairs_Sum
  attr_writer :pairs

  def initialize
    @pairs = []
  end

  def pair_sum(array, k)
    indices = (0...array.length).to_a
    indices = indices.product(indices).reject{|i,j| i == j}
    indices.each do |i,j|
      next if array[i] > array[j]
      tmp_pair = []
      if k == array[i] + array[j]
        tmp_pair.push(array[i])
        tmp_pair.push(array[j])
      end
      @pairs.push(tmp_pair) if (tmp_pair.empty? == false)
    end
    return @pairs.uniq
  end
end

run = Pairs_Sum.new
print run.pair_sum([1, 2, -1], 0)

puts ""

run = Pairs_Sum.new
print run.pair_sum([1, 2, -1, -1, -2], 1)