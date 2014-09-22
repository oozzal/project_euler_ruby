<<-desc
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
desc
num = 2

loop do
  num += 1
  # if y is divisible by 2x, then it is also divisible by x
  break unless (11..20).detect {|n| num % n != 0}
end

puts num
#232792560

