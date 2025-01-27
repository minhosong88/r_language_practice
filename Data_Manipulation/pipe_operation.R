# Pipe Operator
library(dplyr)
df <-mtcars

# Nesting : hard to read
result <- arrange(sample_n(filter(df, mpg>20), size = 5),desc(mpg))
print(result)

# Multiple assignments : waste of memory
a <- filter(df, mpg >20)
b <- sample_n(a, size=5)
result <- arrange(b,desc(mpg))
print(result)

# Move to Pipe Operator: chain of operations with %>%
# data %>% op1 %>% op2 %>% op3
pipe <- df %>% filter(mpg >20) %>% sample_n(size = 5) %>% arrange(desc(mpg))
print(pipe)
