def sum_of_digits num
  num.to_s.chars.inject(0) { |sum, i| sum += i.to_i }
end

p sum_of_digits 2**1000

