def fact x
  sum = 1
  x.downto(2).each do |i|
    sum *= i
  end
  sum
end

def permutations n
  fact(2*n)/(fact(n)*fact(n))
end


def dynamically grid_size
  grid = Array.new(grid_size+1) { Array.new(grid_size+1, 1) }

  (1..grid_size).each do |i|
    (1..grid_size).each do |j|
        grid[i][j] = grid[i-1][j] + grid[i][j-1]
    end
  end
  grid[grid_size][grid_size]
end


p dynamically 2
p dynamically 20

p permutations 20
