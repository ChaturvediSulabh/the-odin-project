# Write a function that takes a string.
# Return true if the string is a palindrome, otherwise return false.
# It should take less time and memory than reversing the string.
class Palindrome
  def is_palindrome?(string)
    string == string.reverse ? (puts true) : (puts false)
  end
end

run = Palindrome.new
run.is_palindrome?('ricercar')

run = Palindrome.new
run.is_palindrome?('racecar')