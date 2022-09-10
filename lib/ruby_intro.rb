# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  for x in arr
    sum = sum + x
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0 
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  sum = arr.sort[-1]+arr.sort[-2]
  return  sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length == 1
    return false
  end
  for i in 0..(arr.length-1)
    for j in i+1..(arr.length-1)
      if arr[i]+arr[j] == number
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  end
  start = string[0].downcase
  consonants = "bcdfghjklmnpqrstvwxyz"

  chars = consonants.split("")
  chars.each do |x|
    if (x == start)
      return true
    end
  end
  return false
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  end
  reg = /[^01]/
  if(reg === string)
    return false
  end
  return string.to_i % 4 == 0

end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price<=0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
