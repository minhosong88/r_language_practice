# Exercise
# Functions
# 1. Create a function that will return the product of two integers
prod <- function(num1, num2){
  return(num1*num2)
}

result <- prod(3, 4)
print(result)

# 2. Create a function that takes 2 args, an int and a vec of ints
# return TRUE if integer presents in the vector and return FALSE otherwise
num_check<- function(num, vec){
  for(item in vec){
    if(num == item){
      return(TRUE)
    }
  }
  return(FALSE)
}


num_check(2, c(1, 2, 3))
num_check(2, c(1, 4, 5))
############### Better ####################
num_check <- function(num, vec){
  return (num %in% vec)
}

# 3. Create a function that takes 2 args, an int and a vec of ints.
# return the count of the number of occurences in the vector
num_count <- function(num, vec){
  count <- 0
  for(item in vec){
    if(item == num){
      count <- count + 1
    }
  }
  return(count)
}
num_count(2, c(1,1,2,2,3,3))
num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))
################### Better #################
num_count <- function(num, vec){
  return (sum(num == vec))
}

# 4. Create a function that accepts an integer.
# integer represents the requested weight
# small: 1 kg, big: 5 kg. least amount of combination
bar_count <- function(weight){
  num <- (weight %/% 5) + (weight%% 5)
  return (num)
}
bar_count(6)
bar_count(17)


# 5. Create a function that accepts 3 integers and return the sum.
# if an integer is evenly divisible by 3. not count
summer <- function(num1, num2, num3){
  valid <- vector()
  if((num1 %% 3) != 0){
    valid <- append(valid, num1)
  }
  if((num2 %% 3) != 0){
    valid <- append(valid, num2)
  }
  if((num3 %% 3) != 0){
    valid <- append(valid, num3)
  }
  
  return (sum(valid))
}

summer(7,2,3)
summer(9,11,12)
summer(3,6,9)

# 6. Create a function that return T if input is a prime number.
prime_checker <- function(num){
  if (num <= 1) {
    return (F)
  }
  for(i in 2:sqrt(num)){
    if(num %% i == 0){
      return (F)
    }
  }
  return (T)
}

prime_checker(2)
prime_checker(237)
prime_checker(131)

