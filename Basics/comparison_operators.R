# Single Element Comparison
print(5 > 6) # FALSE
print(5 < 6) # TRUE
print( 2 == 2) # TRUE
print( 2 == 3) # FALSE
print( 4 != 2)  # TRUE

# spacing with comparison operator is important
v <- 1 # assignment
print(v < -3) # comparison

# Vector Comparison
vec1 <- c( 1,2,3,4,5)
print(vec1 < 2) # perform element by element comparison
# return vector of logical values

vec2 <- c( 3,4,5,6,7)
print(vec1 < vec2)


