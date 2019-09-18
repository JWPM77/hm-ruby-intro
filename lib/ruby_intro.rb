# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  x = 0
  
  arr.each do |elem|
    x += elem
  end
  
  return x
end

def max_2_sum arr
  max = 0
  max_set = false
  next_max = 0
  next_max_set = false
  
  arr.each do |elem|
    if elem > next_max or not next_max_set
      next_max = elem
      next_max_set = true
      
      if elem > max or not max_set
        next_max = max
        next_max_set = max_set
        
        max = elem
        max_set = true
      end
    end
  end
  
  return max + next_max
end

def sum_to_n? arr, n
  low_index = 0
  high_index = arr.length - 1
  sorted_arr = arr.sort
  
  while low_index < high_index
    sum = sorted_arr[low_index] + sorted_arr[high_index]
    if sum == n
      return true
    elsif sum > n
      high_index -= 1
    elsif sum < n
      low_index += 1
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, #{ name }"
end

def starts_with_consonant? s
  return s =~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
    return s =~ /^(?:[10]*10)*0$/i
end

# Part 3

class BookInStock
  def initialize(i,p)
    if i == "" or p <= 0
      raise(ArgumentError)
    end
    
    @isbn, @price = i, p
  end
 
  def price_as_string
    return "$%0.2f" % @price
  end
  
  attr_accessor :isbn
  attr_accessor :price
end