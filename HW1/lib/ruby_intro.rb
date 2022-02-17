# CSCE 606: Software Engineering Homework 1: Ruby on Rails (Krishna C Kushal)
# Part 1

def sum arr
  add=0
  i=0
  while (i< arr.length)
    add = add + arr[i]
    i=i+1
  end
  return add
end


def max_2_sum arr
  arr2=[]
  arr2= arr.max(2){ |a, b| a<=>b} 
  if arr2.length ==0
    return 0
  elsif arr2.length ==1
    return arr[0]
  else
    arr2[0] + arr2[1]
  end
end


def sum_to_n? arr, n
  sum=0
  arr2=[]
  for i in 0...arr.length
    for j in 0...arr.length
      if arr[i] !=arr[j]
      sum = arr[i] + arr[j]
      arr2.append(sum)
      end
    end
  end
  if arr.length == 1
    return false
  else
    arr2.include?n
  end
end

# Part 2

def hello(name)
  str = "Hello, #{name}"
end


def starts_with_consonant? s
  if !!(s[0] =~ /[^aeiou]/i) and !!(s[0] =~ /[a-z]/i) 
     return true
  else
     return false
  end
end


def binary_multiple_of_4? s
  if  !!(s =~ /\s/) or s=='' 
    return false
  elsif  !!(s !~ /[^01]/) 
    num = Integer(s)
    if num % 4 == 0
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
    attr_accessor :isbn, :price
    #Initiailze constructor
    def initialize(isbn,price)
        @isbn =isbn
        @price =price
        if @price <= 0 or @isbn == " " or @isbn == "" 
			raise ArgumentError
        end
    end
    
    def price_as_string 
      return ("$#{'%.2f' %  @price}")
       
    end
    
end

