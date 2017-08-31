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
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[^aeiou]/i and s=~ /^[a-z]/i
end

def binary_multiple_of_4? s
  if s =~ /^(0|1)*$/i and s != ""
    s.to_i % 4 == 0
  else
    false
  end
end

# Part 3

class BookInStock
  
  def initialize (isbn, price)
    if isbn == "" or price == 0 or price < 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    "$%0.2f" % [price]
  end
end
