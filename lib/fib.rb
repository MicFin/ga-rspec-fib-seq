
def fib(x)
  if x.class == Float
    return "No #{x}th number in fib"
  # elsif x.class == String
  #   return NoMethodError
  # elsif x.class == Array
  #   return TypeError
  # elsif (x.class == True) || (x.class == False)
  #   return NameError
  # elsif x.class == Hash
  #   return NoMethodError
  elsif x == 0
    return "No zeroeth number"
  elsif x < 0
    return "No negativith number in fib"
  elsif (x == 1) || (x == 2)
    return 1
  else
    a = (fib(x-1) + fib(x-2))
    return a
  end
end

