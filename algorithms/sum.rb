# Write a function that takes an array of integers and returns their sum.
# Use recursion.
class Sum
  attr_writer :sum

  def initialize
    @sum = 0
  end

  def sum_rec(numbers)
    numbers.each { |n| @sum += n }
    puts @sum
  end
end

run = Sum.new
run.sum_rec([1, 2, 3])

run = Sum.new
run.sum_rec([99, 66, 33])