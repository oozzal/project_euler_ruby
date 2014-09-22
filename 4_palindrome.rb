<<desc
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
desc

num_digits = 3
min = 10**(num_digits-1)
max = 10**num_digits - 1
pals = {}

(min..max).each do |num1|
  (min..max).each do |num2|
    prod = (num1 * num2).to_s
    if prod.reverse == prod
      pals[prod.to_i] = "#{num1}:#{num2}"
    end
  end
end

pal = pals.keys.max
puts "#{pal} => #{pals[pal]}"

