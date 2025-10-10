female_prop <- .66
male_prop <- .17

observed_diff = female_prop - male_prop
print(observed_diff)

# 1 means they survived, 0 means they did not 
sim_function <- function(){
  
  female <- sample(c(1,0), 463, prob=c(0.5, 0.5), replace = TRUE) # output from the first flip
  male <- sample(c(1,0), 854, prob=c(0.5, 0.5), replace = TRUE)  # output from the second flip  
  difference <-  mean(female) - mean(male)
  return(difference)
}


#Assign rates to the replicate to have 100 simulations
rates <- replicate(100, sim_function())

p_value <- mean(abs(rates) >= abs(observed_diff))
Reject_H_not <- (p_value <= 0.05)

# Outputs boolean
print(Reject_H_not)
