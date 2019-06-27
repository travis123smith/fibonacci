require 'benchmark'

 def recursive_fib(n)
   return  n if n <= 1
   recursive_fib(n-1)+recursive_fib(n-2)
end

def iterative_fib(n)
   num1 = 0
   num2 = 1
 n.times do
   holder = num1
   num1 = num2
   num2 = holder + num2
 end
 return num1
end

#puts recursive_fib(35)
#puts iterative_fib(35)

n = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(n) }
  x.report("iterative_fib")  { iterative_fib(n)  }
end