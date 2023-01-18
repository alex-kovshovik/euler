# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

range = 1..100

sum_of_squares = range.reduce(0) { |sum, n| sum + n * n }
square_of_sums = range.sum ** 2

puts "The result is #{square_of_sums - sum_of_squares}"

# The result is 25_164_150
