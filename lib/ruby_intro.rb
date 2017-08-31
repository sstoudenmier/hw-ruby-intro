# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

def max_2_sum arr
  arr.sort!
  if arr.length >= 2
    arr.pop + arr.pop
  elsif arr.length == 1
    arr.pop
  else
    0
  end
end

def sum_to_n? arr, n
  if arr.length <= 1
    false
  else
    (0...arr.length-1).each do |i|
      (i+1...arr.length).each do |j|
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
