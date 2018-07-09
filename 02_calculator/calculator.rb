#write your code here
def add(number1, number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(arr)
  arr.sum
end

def multiply(number1, number2)
  number1 * number2
end

def power(number1, number2)
    number1 ** number2
end

def factorial(number)
 num = number
 if num == 0
   1
 else
   num * factorial(number - 1)
 end
end
