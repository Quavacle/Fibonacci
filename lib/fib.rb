module Fibonacci
  def self.iterative(x)
    a = 1
    b = 0
    c = 0
    x.times do
      c = a + b
      a = b
      b = c
    end
    return c
  end

  def self.recursive(n)
     if n < 2
      n
    else
      Fibonacci.recursive(n - 1) +  Fibonacci.recursive(n - 2)
    end
  end  
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { Fibonacci.recursive(num) }
  x.report("iterative_fib")  { Fibonacci.iterative(num) }
end