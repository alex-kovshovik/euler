# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# 1. 1 = 1
# 2. 2 = 1 * 2
# 3. 6 = 2 * 3
# 4. 12 = 6 * 2 - ???
# 5. 60 = 12 * 5
# 6. 60
# 7. 420 = 60 * 7
# 8. ...


def prime?(number)
  !(2..number/2).any? { number % _1 == 0 }
end

def get_prime_factors(number)
  (2..number).select { number % _1 == 0 && prime?(_1) }
end

result = 1

i = 1

while i <= 20
  puts "i = #{i}"

  if result % i == 0
    puts "#{i} already divides #{result} evenly, do nothing."
  elsif prime?(i)
    puts "#{i} is a prime, new result = #{result} * #{i} = #{result * i}"
    result *= i
  else
    factors = get_prime_factors(i)
    puts "multiplying #{result} by first prime factor of #{i}: #{factors.first} = #{result * factors.first}"
    result *= factors.first
  end

  puts
  i += 1
end

# Test the result.
non_dividable_by = (1..10).select { result % _1 != 0 }

if non_dividable_by.any?
  puts "Still found a few numbers that do not divide the result evenly: #{non_dividable_by} 😢"
else
  puts "The result is #{result} 😎"
end

# The result is 232_792_560
