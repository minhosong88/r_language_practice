# Data Frame Exercise
# 1. Recreate the given dataframe 
# by creating vectors and using data.frame function
Age <- c(22,25,26)
Weight <-c(150,165,120)
Sex <-c('M','M','F')
name <- c('Sam','Frank','Amy')
df <- data.frame(Age, Weight, Sex, row.names = name, stringsAsFactors =  T )
print(df)
## rownames(df) <- c('A','B','C') is also possible to set row names in order



# 2. Check if mtcars is a dataframe using is.data.frame()
print(is.data.frame(mtcars))

# 3. Use as.data.frame() to convert a matrix into a dataframe
mat <- matrix(1:25, nrow = 5)
as.data.frame(mat)

# 4. Set mtcars as df. 
df <- mtcars

# 5. Display the first 6 rows of df
head(df, 6)


# 6. what is the average of mpg valur for all the cars?
avg_mpg <- mean(mtcars$mpg)
print(avg_mpg)


# 7. Select the rows where all cars have 6 cylinders
df[df$cyl == 6, ]
subset(df, cyl == 6)

# 8. Select the columns am, gear, and carb
subset(df, select=c('am','gear','carb'))
df[, c('am','gear','carb')]

# 9. Create a new column called performance, which is cacluated by hp/wt
df$performance <- df$hp/df$wt
head(df)

# 10. Figure out how to use round() to reduce the accuracy to only 2 decimal
df$performance <- round(df$performance,2)
head(df)
# 10-1. What is the average mpg of cars that have more than 100 hp and a 2.5 of wt
condition <- subset(df, (hp > 100) & (wt > 2.5))
mean(condition$mpg)
# or subset(df, (hp > 100) & (wt > 2.5))$mpg  directly as argument

# 11. What is the mpg of the Hornet Sportabout
df[[5, 'mpg']]
df['Hornet Sportabout','mpg']
df['Hornet Sportabout',]$mpg
