#### 1. Create data frames
# Empty data frame
empty <- data.frame()

c1 <- 1:10
print(letters)
c2 <- letters[1:10]

df <- data.frame(col.name.1 = c1, col.name.2 = c2, stringsAsFactors = TRUE) 
# column name is variable name by default if not specified 
print(df)

#### 2. Importing and exporting data



# Write CSV
write.csv(df, file = 'saved_df.csv')

# When saving with write.csv, it automatically saves the index as a column

# Read CSV file
df2 <- read.csv('saved_df.csv')
print(df2)

#### 3. Getting information about data frame

# columns & rows count
nrow(df)
ncol(df)

colnames(df)
rownames(df) # Row names are usually extensive so not very practical

str(df) # structure of df
summary(df) # summary

#### 4. Referencing cells
# Using bracket[]
df[[5,2]]

# Using column name
df[[5, 'col.name.2']]

# Replace the value of a cell
df[[2, 'col.name.1']] <- 9999


#### 5. Referencing Rows
# referencing row returns df not vector
df[1,]

# return as a vector
df[1, , drop = TRUE]

#### 6.Referencing Columns
head(mtcars)

# Getting is as a vector
mtcars$mpg
mtcars[, 'mpg']
mtcars[['mpg']] 

# Getting is as a df
mtcars['mpg'] # this returns a dataframe with one column

# multiple columns
head(mtcars[c('mpg', 'cyl')])

#### 7. Adding Rows
df2 <- data.frame(col.name.1 = 2000, col.name.2 = 'new')

# Using rbind function
df_new = rbind(df, df2)
print(df_new) # a new row is added

#### 8. Adding Columns
# Create a new column at the original df
# Treat the new column as if it is already there
df$newcol <- 2*df$col.name.1
print(df)
# Useful for copying a column
df$newcol.copy <- df$newcol
print(df)
df[, 'newcol.copy2'] <- df$newcol.copy
print(df)

#### 9. Setting Column names
# changing all the column names with a vector
colnames(df) <- c('1','2','3','4','5')
print(df)
# Select a column to change its name
colnames(df)[1] <- "New Col Name" # use index
print(df)
colnames(df)[colnames(df) == "2"] <- "New Col Name2" # use name
print(df)
#### 10. Selecting Multiple Rows

# first __ rows
df[1:5,]
head(df, 7)

# deselect a specific row with -
df[-2,]

# conditional row selection
mtcars[mtcars$mpg > 20, ] # don't forget to put comma at the end to select all the columns

# filtering two separate columns

mtcars[ (mtcars$mpg > 20) & (mtcars$cyl == 6), c('mpg','cyl','hp') ]

# using subset function ( more compact)
subset(mtcars, mpg > 20 & cyl == 6)
subset(mtcars, mpg > 20 & cyl == 6, select = c(mpg, cyl, hp))

#### 11. Selecting Multiple Columns

head(mtcars)
mtcars[, c('mpg','cyl','hp')]

#### 12. Dealing with Missing data
# Detect any missing data
is.na(mtcars) # will return True is there's a missing data
# is.na return a whole logical data frame
any(is.na(mtcars)) # return True if there's any N/A in the dataframe

# or select a column
any(is.na(mtcars$mpg))


# Replace a column with N/A with specified value
df[is.na(df$`New Col Name`)] <- 0 # or any value
 