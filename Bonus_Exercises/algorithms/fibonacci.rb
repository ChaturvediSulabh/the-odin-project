# Write a function that takes n, the length of the sequence.
# Return the first n elements from the Fibonacci sequence as an array.
class Fibonacci
  attr_reader :num1, :num2
  attr_writer :sequence

  def initialize
    @num1 = 0
    @num2 = 1
    @sequence = Array.new
    @sequence << @num1
    @sequence << @num2
  end

  def fibs(n)
    (n-2).times do
      sum = @num1 + @num2
      @sequence << sum
      @num1 = @num2
      @num2 = sum
    end
    print @sequence
  end
end

run = Fibonacci.new
run.fibs(3)

run = Fibonacci.new
run.fibs(5)