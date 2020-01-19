# Write a method that will sum the digits of a positive integer.
# If it is greater than or equal to 10, sum the digits of the resulting number.
# Keep repeating until there is only one digit in the result.
# The result is called a 'digital root'.
# Do not use string conversion within your method.

class Sum_Of_All_Digits
  attr_writer :result

  def initialize
    @result = 0
  end

  def digital_root(number)
    numbers = number.to_s.chars
    sum(numbers)
    len = numbers.length
    until len == 1 do
      numbers = @result.to_s.chars
      @result = 0
      sum(numbers) if numbers.length > 1
      len = @result.to_s.chars.length
    end
    puts @result
  end

  private

  def sum(numbers)
    numbers.each { |num| @result += num.to_i }
  end

end

run = Sum_Of_All_Digits.new
#  run.digital_root(1853)
run.digital_root(65_536)