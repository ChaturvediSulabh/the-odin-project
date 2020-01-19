# Implement binary search.
# Return nil if the target isn't found.
class Binary_Search
  attr_accessor :min, :max

  def initialize
    @min = 0
    @max = 0
  end

  def binary_search(array, target)
    @max = array.length - 1

    while @min <= @max
      mid = (@min + @max) / 2
      chk = array[mid] <=> target
      puts "chk = #{chk}, mid = #{mid}, min = #{@min} and max = #{@max}"
      case chk
      when 0
        return mid
      when -1
        @min = mid + 1
      when 1
        @max = mid - 1
      end
    end
    return nil
  end

end

run = Binary_Search.new
puts run.binary_search([1, 5, 13, 23, 305, 333, 402, 454, 500], 13)

run = Binary_Search.new
puts run.binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11)