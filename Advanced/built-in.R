# Built-in features
# seq(start, end, by= step_size) : Create sequences

seq(0, 10, by=2)
seq(0, 100, by=10)

# sort(): Sort a vector
v <- seq(0,10, by=2)

# by default, ascending sort
sort(v)
sort(v, decreasing =T)

# characters are by alphabetical order case-insensitive
cv <- c('b','d','a', 'A')
sort(cv)

# rev(): reverse the object
v <- 1:10
rev(v)

# str(): show the structure of an object
str(mtcars)

# append(): merge objects together
v <- 1:10
v2 <- 35:40
merged <- append(v, v2)
merged

# Checking data type
# is.vector(), is.data.frame(), is.matrix(), is.na() etc..


# Convert Data type
# as.list() :  output as a list
# as.matrix() : output as a matrix etc.


