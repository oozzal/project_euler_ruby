"""
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

def is_prime?(n)
  !(2...n).detect {|num| n % num == 0}
end

target = 13195

num = target
while (num -= 1) >= 2
  if target % num == 0 && is_prime?(num)
    puts "Number: #{target}, Largest Prime Factor: #{num}"
    break
  end
end

# (target...2).detect {|num| target % num == 0 && is_prime?(num) }

