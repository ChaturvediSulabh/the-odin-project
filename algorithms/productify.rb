# You are given a list of numbers in an array.
# Replace all the numbers with the product of all other numbers.
# Do this in O(n) time without using division.
class Productify
  attr_writer :resulted_array

  def initialize
    @resulted_array = []
  end

  def productify(array)

  end
end

run = Productify.new
print run.productify([2,3,5])