"""
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

def is_prime?(n)
  (2...n).select {|num| n % num == 0}.empty?
end

target = 13195
largest_prime_factor = 0

(2...target).each do |num|
  largest_prime_factor = num if target % num == 0 && is_prime?(num)
end

num = target
while (num -= 1) >= 2
  if target % num == 0 && is_prime?(num)
    puts "Num: #{num}, #{target}"
    break
  end
end

(target...2).detect {|num| target % num == 0 && is_prime?(num) }
