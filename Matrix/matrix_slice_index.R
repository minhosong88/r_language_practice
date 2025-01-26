# Matrix slicing and indexing

mat <- matrix(1:50, byrow = T, nrow = 5)
print(mat)

# indexing: mat[rows, cols]
# blank means selecting all
# first column
print(mat[,1])

# slicing with rows 1-3, all columns
print(mat[1:3,])
print(mat[1:2, 1:3])
