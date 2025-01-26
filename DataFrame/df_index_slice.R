# Selection and Indexing
# From the previous example
days <- c('Mon', 'Tue', 'Wed' ,'Thu', 'Fri')
temps <- c(22.2, 21, 23,24.3, 25)
rain <- c( T,T,F,F,T)
# pass in the vector
df <- data.frame(days,temps, rain)

# using bracket[]
df[1,] # first raw
df[,1] # first column

# use name of the row or colums
df[,'rain'] # column is returned as a  vector
# all rows with only days and temps
df[1:5, c('days', 'temps')]

# grabbing all of element of a column using $
# using $ keyword returns a vector 
df$days
df$temps

# while using [] returns a df
df['days']


# Grab a subset
subset(df, subset = rain==T ) # no need '' or "" for rain
subset(df, subset = temps > 23)

# Sort the df with order function
sorted.temp <- order(df$temps) # order requires a vector not df
print(sorted.temp) # index is returned in an ascending order
# descending is set with order(-df$temps)
# How to sort df using sorted temp
df[sorted.temp,]

desc.temp <- order(-df$temps)
df[desc.temp,]
