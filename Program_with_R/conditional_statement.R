# Exercise
# Conditional Operation

# 1. Print "Even Number" if the variable x is an even number
x<-2
if(x %% 2 == 0){
  print("Even Number")
} else{
  print("Not Even")
}

# 2. Print "Is a Matrix" if the variable x is a matrix,
# Otherwise, "Not a Matrix"
x <- matrix()
v <- vector()
l <- list()

if(is.matrix(v)){
  print("Is a Matrix")
} else{
  print("Not a Matrix")
}


# 3. given a numeric vector x with a length 3, 
# print elements in a descending order
x <- c(3, 7, 1)
if (x[1] > x[2] && x[1] > x[3]){
 if (x[2] > x[3]){
   print(c(x[1], x[2], x[3]))
 } else{
   print(c(x[1], x[3], x[2]))
 }
} else if (x[2] > x[1] && x[2] > x[3]){
  if(x[1] > x[3]){
    print(c(x[2], x[1], x[3]))
  } else{
    print(c(x[2], x[3], x[1]))
  }
} else{
  if(x[2] > x[1]){
    print(c(x[3], x[2], x[1]))
  }else{
    print(c(x[3], x[1], x[2]))
  }
}
# 4. Print the max element in a numeric vector with 3 elements
x <- c(20, 10, 1)
if(x[1] > x[2] && x[1] > x[3]){
  print(x[1])
} else if (x[2] > x[1] && x[2] > x[3]){
  print(x[2])
} else if (x[3] > x[1] && x[3] > x[2]){
  print(x[3])
}






