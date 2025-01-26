vec1 <- c(100,200,300)
vec2 <- c( 'a','b','c')

# index in R starts from 1

print(vec1[2])

# slice
# use combine function to grap multiple items from a vector

print(vec1[c(1,2)])
print(vec1[c(1,3)])

# Continuous slicing( [start index:stop index] )
vec <- c( 1,2,3,4,5,6,7,8,9,10)
print(vec[2:4]) 
print(vec[7:10])

# Use name

vec3 <- c(1,2,3,4)
names(vec3) <- c('a','b','c','d')
print(vec3)

# Name can be used to call the elements
print(vec3['b'])
print(vec3[c('d','b','a')])


# Logical masking
print(vec3[vec3 > 2]) # Filter elements greater than 2
print(vec3 > 2)

# Assign the logical vector and reuse it to filter
my.filter <- vec3 > 2
print(my.filter)
print(vec3[my.filter])
