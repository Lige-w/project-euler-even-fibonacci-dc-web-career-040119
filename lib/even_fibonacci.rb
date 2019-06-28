# Implement your procedural solution here!
def even_fibonacci_sum(n)
  even_sum = 0
  curr_fib = 2
  prev_fib = 1

  while curr_fib <= n
    even_sum += curr_fib if curr_fib % 2 == 0
    next_fib = curr_fib + prev_fib
    prev_fib = curr_fib
    curr_fib = next_fib
  end
  even_sum
end