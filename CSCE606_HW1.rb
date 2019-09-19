# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  res = 0
  arr.each{ |item| res= res+item }
  return res
  
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr.max
  end
  
  max1 = arr.max(2)
  
  return max1[0]+max1[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  dict = {}
  arr.each_with_index do |item, i|
    if dict[n - item]
      return true
    end
    dict[item] = i
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if s.length == 0
    return false
  end
  
  if s[0] =~ /[A-Za-z]/
    if s[0] =~ /[A,E,I,O,U,a,e,i,o,u]/
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end

  s.each_char do |item|
    if item != '1' && item != '0'
      return false
    end
  end
  
  num = s.to_i(2)
  if num % 4 == 0
    return true
  end
  
  return false    
  
end

# puts binary_multiple_of_4? "12345"
# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
  
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
  
    @isbn = isbn
    @price = Float(price)

  end

  def isbn
    return @isbn
  end

  def isbn=(newisbn)
   @isbn = newisbn
  end
  
  def price
   return @price
  end

  def price=(newprice)
   @price = Float(newprice)
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
  
end
