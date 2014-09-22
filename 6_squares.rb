<<-desc
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
desc

N = 100
square_of_sum = (1..N).inject(:+)**2
sum_of_squares = (1..N).map{|n| n**2}.inject(:+)
puts square_of_sum - sum_of_squares
#2640

