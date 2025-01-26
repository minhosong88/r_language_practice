# Create DF

days <- c('Mon', 'Tue', 'Wed' ,'Thu', 'Fri')
temps <- c(22.2, 21, 23,24.3, 25)
rain <- c( T,T,F,F,T)
df <- data.frame(days,temps, rain)
print(df)
str(df)
summary(df)

# Built-in dataframe can be found in data().