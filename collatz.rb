# Print the collatz sequence starting with positive integer n.
# Ex: collatz(4) should return "4->2->1"
def collatz(n)
  a=[n]
  while n>1 do
    a << n = f(n)
  end
  a.join("->")
end

def f(n)
  if n%2==0
    n = n / 2
  else
    n = 3*n + 1
  end
end
