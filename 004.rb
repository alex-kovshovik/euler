# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(number)
  digits = number.digits
  count = digits.count

  (0..count/2).all? { digits[_1] == digits[-_1 - 1] }
end

a = 999
palindromes = []

while a >= 900
  b = 999
  while b > 900
    palindromes << a * b if palindrome?(a * b)
    b -= 1
  end

  a -= 1
end

if palindromes.any?
  puts "The result is #{palindromes.max} 🤓"
else
  puts "Largest palindrome is not found 😢"
end

# The result is 906_609.