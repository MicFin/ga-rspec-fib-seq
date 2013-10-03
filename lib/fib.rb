
# def fib(x)
#   if x.class == Float
#     return "No #{x}th number in fib"
#   elsif x == 0
#     return "No zeroeth number"
#   elsif x < 0
#     return "No negativith number in fib"
#   elsif (x == 1) || (x == 2)
#     return 1
#   else
#     a = (fib(x-1) + fib(x-2))
#     return a
#   end
# end

# def fib(x)
#   if (x.class == Float) || x <= 0
#     return "Can't look up the 0th, negativith or decimalith number in the fib sequence, duh"
#   elsif (x == 1) || (x == 2)
#     return 1
#   else
#     a = (fib(x-1) + fib(x-2))
#     return a
#   end
# end


def fib(x)
  a = [1,1,2]
  if (x.class == Float) || x <= 0
    return "Can't look up the 0th, negativith or decimalith number in the fib sequence, duh"
  elsif x == 1
    return [1]
  elsif x == 2
    return [1,1]
  elsif x == 3
    return [1,1,2]
  else
    count = 0
    until x == 2
      a << (fib(x-1) + fib(x-2))
      x += 1
    end
    return a
  end
end