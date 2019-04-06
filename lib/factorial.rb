# Time complexity: O(n) where 'n' represents the number input. The factorial method
# will call itself n times. I originally used an iterative method as seen in comment below
# which has a similar linear time complexity of O(n) where n represents the number
# input, and the times loop executed n-2 times. These is actually a quicker method,
# but I chose a recursive approach because of the improved space complexity.
# Space complexity: O(1) constant, because the number is updated in place. This is
# the same space complexity as the iterative method, but it improves upon the iterative
# method by replacing the number in place rather than creating new variables to both
# iterate "i" and store the final result "fact." My final choice of algorithm would
# depend on the specific limitations of my project.

def factorial(number)
  if number == nil
    raise ArgumentError, "Cannot compute the factorial of nil."
  elsif number == 0 || number == 1
    return 1
  end
  return number * factorial(number - 1)
end

# def factorial(number)
#   if number == nil
#     raise ArgumentError, "Cannot compute the factorial of nil."
#   elsif number == 0 || number == 1
#     return 1
#   end
#   fact = number
#   i = 1
#   (number - 2).times do
#     fact *= (number - i)
#     i += 1
#   end
#   return fact
# end
