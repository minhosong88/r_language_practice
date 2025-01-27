#Guide to tidyr
#install.packages('tidyr')
#install.packages('data.table')

library(tidyr)
library(data.table)

######### pivot_longer(): collapse multiple columns to key-pair values
# wide-format data into long-format data
# Useful when multiple columns representing the same type of variable
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
# pivot_longer(data, cols= range of columns, names_to = "col_name", values_to = "col_name"  )
pivot <- df %>% pivot_longer(Qtr1:Qtr4, names_to = "Quarter", values_to = "Revenue")
print(pivot)
######## pivot_wider(data, names_from = col_name, values_from = col_name) : forming longer format back to wider format
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)

stocks.long_form<- stocks %>% pivot_longer(X:Z, names_to = "stock", values_to =  "price")
head(stocks.long_form)
# setting the time as key, the df has got wider format.
stocks.long_form %>% pivot_wider(names_from = time, values_from =  price)
# By making it wider, it lost a feature of putting price label in the table


######### Separate: separate a column into two
### Syntax: separate(data, col, into, sep = " ", remove = TRUE, convert = FALSE, extra = "warn", fill = "warn")

df <- data.frame(x = c(NA, "a.x", "b.y", "c.z"))
df %>% separate(x, c("ABC", "XYZ"))

df <- data.frame(x = c(NA, "a-x", "b-y", "c-z"))
# add a separator
df %>% separate(col = x, into = c("ABC", "XYZ"), sep = '-')

## Separator can split the column into more than two
data <- data.frame(name = c("a-b-c", "x-y-z"))
separate(data, col = name, into = c("first_name", "middle_initial", "last_name"), sep = "-")


######## Unite
### Syntax: unite(data, col, ..., sep = "_", remove = TRUE, na.rm = FALSE)
df.sep = df %>% separate(col = x, into = c("ABC", "XYZ"), sep = '-')

### Reversing separate
df.sep %>% unite(col = new.joined, ABC, XYZ, sep = "--")




