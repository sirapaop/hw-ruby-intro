# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort! {|first, second| second <=> first}
    sum = arr[0] + arr[1]
    return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum_arr = []
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false

  else
    arr.each do |i|
      arr.each do |j|
        if i != j
          sum = i + j
          if n == sum
            return true
          end
        end
      end
    end
    return false
  end  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  else
    first = s.chr
    first.downcase
    arr = ['a','e','i','o','u', '#','U']
    for i in arr do
      if first == i
        return false 
      end 
    end
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.delete(" ")
  if s == "" 
    return false

  elsif s.delete('01') == ''
    if s.to_i(2) % 4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
end
  

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn
  attr_reader :price
  
  attr_writer :isbn
  attr_writer :price
  def initialize(isbn, price)
      @isbn = isbn
      @price = price
      if isbn.length == 0 || price < 1
        return raise ArgumentError
      end
  end
  def price_as_string
    
    a = '%.2f' % @price
    return "$#{a}" 
  end

end
