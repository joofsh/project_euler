start_time = Time.now
def next_in_chain num
  num.even? ? num/2 : num*3+1
end

MAX = 999_999
winner = 0
most_terms = 0
seq = {}

(1..MAX).each do |num|
  count = 0
  n = num
  while n > 1
    if seq[n]
      n = seq[n]
    else
      new_val = next_in_chain n
      seq[n] = new_val
      n = new_val
    end
    count += 1
  end

  if count > most_terms
    winner = num
    most_terms = count
  end
end

p "winner: #{winner}"
p "terms: #{most_terms}"
p "solved in: #{Time.now - start_time} seconds"
