fibslow  <- function(n)
{
  if (length(n) > 1) return(sapply(n, fib)) # accept a numeric vector
  if (n == 1) return(1) # first seed value
  if (n == 2) return(1) # second seed value
  return(fib(n-1)+fib(n-2)) # use recursion
}

# print first five Fibonacci numbers
fibslow(1)
fibslow(2)
fibslow(3)
fibslow(4)
fibslow(5)

#quicker fib
fibk <- function(n) {
  len = n
  fibvals = numeric(n)
  fibvals[1] = 1
  fibvals[2] = 1
  for (i in 3:n) {
    fibvals[i] = fibvals[i-1] + fibvals[i-2]
  }
  return (fibvals[n])
}
