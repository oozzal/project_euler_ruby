<<desc
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
desc

number = 600851475143
new_number = number
largest_prime_factor = 0
counter = 2
t1 = Time.now

while counter * counter <= new_number
  if new_number % counter == 0
    new_number /= counter
    largest_prime_factor = counter
  else
    counter += 1
  end
end

largest_prime_factor = new_number if new_number > largest_prime_factor

puts "Factor: #{largest_prime_factor}"
puts "Counter: #{counter}"

puts "Time taken: #{Time.now - t1}"

