# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

def prime?(number)
  !(2..number/2).any? { number % _1 == 0 }
end

number = 600_851_475_143
limit = number / 2
f = 2

prime_factors = []
result = nil

while f < limit
  if number % f == 0
    q = number / f
    if prime?(q)
      result = q
      break
    end

    prime_factors << f if prime?(f)
    limit = q
  end

  f += 1
end

result = prime_factors.last if result.nil?

puts "The result is #{result}"

# The result is 6857
