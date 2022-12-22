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
