# Implement Merge Sort
# Hint: This typically involves a helper function.
class Merge_Sort
  attr_accessor :sorted_list, :div_n_conq

  def initialize
    @sorted_list = Array.new
    @div_n_conq  =  Array.new
  end

  def merge_sort(array)
    return @sorted_list = array if array.length == 1

    left_array = array[(0...array.length/2)]
    right_array = array[(array.length/2...array.length)]
    @div_n_conq.push(left_array)
    @div_n_conq.push(right_array)

    self.merge_sort(left_array)
    self.merge_sort(right_array)
    # merge(left_array, right_array)
    return @sorted_list
  end

  def merge(left_array, right_array)
    # puts "SORTED: #{@sorted_list}, LEFT: #{left_array}, RIGHT: #{right_array}"
    # while (left_array.empty? == false && right_array.empty? == false)
    #   # puts (left_array.empty? && right_array.empty?)

    #   if left_array[0] > right_array[0]
    #     @sorted_list.push(right_array[0])
    #     right_array.pop(right_array[0])
    #   else
    #     @sorted_list.push(left_array[0])
    #     left_array.pop(left_array[0])
    #   end
    # end

    # until left_array.empty?
    #   @sorted_list.push(left_array[0])
    #   left_array.pop(left_array[0])
    # end

    # until right_array.empty?
    #   @sorted_list.push(right_array[0])
    #   right_array.pop(right_array[0])
    # end

  end

end

run = Merge_Sort.new
print run.merge_sort([1452, 23, 1, 5])