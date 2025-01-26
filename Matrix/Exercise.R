# Exercise

# 1. Create two vectors A(1,2,3) and B(4,5,6) 
# then Create a 2 by 3 matrix from the vectors
# vectors are treated as column by default
A <- matrix(c(1, 2, 3), nrow=1)
B <- matrix(c(4, 5, 6), nrow=1)
print(A)
print(B)
combined <- rbind(A, B)
print(combined)

# 2. Create a 3x3 matrix consisting of the numbers 1-9.
mat <- matrix(c(1:9), byrow= T, nrow=3)
print(mat)

# 3. confirm if the mat is a matrix using is.matrix()
print(is.matrix(mat))


# 4. Create 5x5 matrix with 1~25 assign it to mat2.
# top row being 1-5
mat2 <- matrix(c(1:25), byrow = T, nrow=5)
print(mat2)

# 5. Using index notation, grab a sub-section of mat2:
# [7, 8] , [12, 13]
print(mat2[2:3, 2:3])



# 6. Using index notation, grab s sub-section of mat2
# [19,20]
# [24, 25]
print(mat2[4:5, 4:5])

# 7. what is the sum of all the elements in mat2?
print(sum(mat2))

# 8. Find how to use runif() to create 4x5 matrix consisting of 20 random nunmbers
mat3 <- matrix(c(runif(20, 1, 100)), nrow = 4)
print(mat3)