# c : combine function
nvec <- c(1,2,3,4,5,6)
class(nvec)

cvec <-c("U","S","A")
class(cvec)

lvec<-c(T, F)
class(lvec)

# Cannot Mix data type 

v <- c(T, 20, 40)
print(v)
class(v) # numeric

v2 <- c("USA", 20, 40)
print(v2)
class(v2) # character


# Vector names
temps <- c(72,71,68,73,69,75,76)
names(temps) <- c('Mon', 'Tue', 'Wed' ,'Thu', 'Fri', 'Sat', 'Sun')
print(temps)
# assign names to a vector for reusability
days<- c('Mon', 'Tue', 'Wed' ,'Thu', 'Fri', 'Sat', 'Sun')
names(temps) <- days
