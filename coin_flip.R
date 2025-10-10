mu <- .4
# formula to find mu: ((.4 * 2) + (.4 * 1))

one_trial <- function(){
  
  first <- sample(c(1,0), 1, prob=c(0.4, 0.6)) # output from the first flip
  second <- sample(c(1,0), 1, prob=c(0.4, 0.6))  # output from the second flip  
  out <- (first * 2) + (second * -1) # This line needs to be modified ... 
  return(out)
}
one_trial()

#simulate function to run the trial multiple times
simulate <- function(n) {
  all_the_out <- rep(0,n)
  
  #{ place for for loop 
  for (i in 1:n){
  all_the_out[i] <- one_trial()   # Each time you need to store your output to ith element of all_the_out
  }
  # to get the expected value... you need to average them
  out <- mean(all_the_out)
  return(out) # out variable is the expected value
}

simulate(100) 
