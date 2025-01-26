# From Previous Example
goog <- c(450,451,452,445,468)
msft <- c(230,231,232,233,220)
stocks <- c(goog,msft)
stock.matrix <- matrix(stocks, byrow=T, nrow=2)
days <- c('Mon', 'Tue' ,'Wed','Thu','Fri')
stock.names <- c('GOOG','MSFT' )
colnames(stock.matrix) <- days
rownames(stock.matrix) <- stock.names
print(stock.matrix)
#######################################
# Column sum
print(colSums(stock.matrix))
# Row sum
print(rowSums(stock.matrix))

# Row means
print(rowMeans(stock.matrix))

# column meas
print(colMeans(stock.matrix))


# Add new rows(rbind(current_matrix, new_column))
FB<- c(111, 112, 113, 120, 145)
tech.stocks <- rbind(stock.matrix, FB)
# The variable name is used as a row name
print(tech.stocks)

# Add new columns(cbind(current_matrix, new_column))
avg <- rowMeans(tech.stocks)
tech.stocks<-cbind(tech.stocks, avg)
print(tech.stocks)
