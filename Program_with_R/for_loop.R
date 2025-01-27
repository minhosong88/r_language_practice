v <- c(1,2,3,4,5)

for(temp in v){
  result <- temp +1
  print(result)
}

# For loop in matrix iterate column by column
# For loop uses temporary copy of the original data

# To be able to modify the original data
# Need to use index
v <- c(3, 4, 5, 6, 7)

# Use indices to modify the vector
for (i in seq_along(v)) {
  v[i] <- v[i] + 1
}

print(v)  # Now v will be updated

# Nested For loop
mat <- matrix(1:25, nrow = 5)
# 1:nrow(mat) returns number of rows 1:ncol(mat) returns num of columns
for (row in 1:nrow(mat)) {
  for(col in 1:ncol(mat)){
    print(paste('The element at row:', row, ' and col:', col, ' is' , mat[row, col]))
  }
}
