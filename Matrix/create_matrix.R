# Create a sequential numeric vector
seq_vec <- 1:10

# Create a matrix
# 10 rows with 1 cols
matrix(seq_vec)

# 2 row with 5 cols by specifying num of rows
matrix(seq_vec, nrow = 2)

# byrow fills the numbers by row // not by column
matrix(1:12, byrow = T, nrow=4)

# Example
goog <- c(450,451,452,445,468)
msft <- c(230,231,232,233,220)

stocks <- c(goog,msft)
# This creates a single appending vector
print(stocks)

# make a matrix
stock.matrix <- matrix(stocks, byrow=T, nrow=2)
print(stock.matrix)

days <- c('Mon', 'Tue' ,'Wed','Thu','Fri')
stock.names <- c('GOOG','MSFT' )

# colnames, rownames function to assign names to row and column
colnames(stock.matrix) <- days
rownames(stock.matrix) <- stock.names

print(stock.matrix)
