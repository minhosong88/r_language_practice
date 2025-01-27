######### Apply Function
# sample(object, how many): randomly sample from data
print(sample(x = 1:100, 3)) 

v <- c(1,2,3,4,5)

# Create a simple function 
addrand <- function(x){
  ran <- sample(1:100, 1)
  return(x + ran)
}
print(addrand(10))
 
# lapply(vector, function): apply function to each element
result = lapply(v, addrand)

# lapply returns list of the results
print(result)

# sapply returns a vector
result = sapply(v, addrand)
print(result)

# Another Example with multiple inputs

v <- 1:5
add_choice <- function(num, choice) {
 return (num + choice) 
}

# sapply( object, function_name, additional argument)
result <- sapply(v, add_choice, choice = 100 )

print(result)

########## Anonymous Function
# no function name and no return keyword
v <- 1:5
result <- sapply(v, function(num){num*2})
print(result)




############ Apply with multiple vectors
# mapply(function, vec1, vec2,  ...)
v1 <- 1:5
v2 <- 6:10

result = mapply(function(num1, num2){ num1 + num2}, v1, v2)

print(result)

