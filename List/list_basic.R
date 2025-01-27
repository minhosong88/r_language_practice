# Create different data types

v <- c(1,2,3)
m <- matrix(1:10, nrow = 2)
df <- mtcars

class(v)
class(m)
class(df)

#List for different data types

my.list <-list(v, m, head(df))
print(my.list)

my.name.list <-list(sample_vec = v, my.matrix = m, sample.df = head(df))

print(my.name.list)
my.name.list$sample.df

# list element directly accessed with index or name
my.list[1]
my.name.list['sample_vec']

# class of the elements in the list is list
# when accessed with bracket
class(my.list[1]) # List

# $ method or  [[ ]] is returning its own class
class(my.name.list$sample_vec) # Numeric

# list can be combined

double.list <- c(my.list, my.list)
print(double.list)
