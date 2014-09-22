<<-desc
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
desc

def is_prime?(n)
  !(2...n).detect {|nn| n % nn == 0}
end

st = 10001
i = 0
num = 1

loop do
  break if i == st
  i += 1 if is_prime?(num += 1)
end

puts num

