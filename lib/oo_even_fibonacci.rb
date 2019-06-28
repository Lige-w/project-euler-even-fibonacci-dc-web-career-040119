# Implement your object-oriented solution here!
class EvenFibonacci

  attr_accessor :curr_fib, :prev_fib, :even_sum

  attr_reader :limit

  def initialize(n)
    @limit = n
    @curr_fib = 2
    @prev_fib = 1
    @even_sum = 0
  end

  def sum
    while self.curr_fib <= self.limit
      self.even_sum += self.curr_fib if self.curr_fib % 2 == 0
      next_fib = self.curr_fib + self.prev_fib
      self.prev_fib = self.curr_fib
      self.curr_fib = next_fib
    end
    self.even_sum
  end

end