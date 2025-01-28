## Exercise
library(ggplot2)
library(ggthemes)
theme_set(theme_grey())
df <- mpg

# 1. histgram of hwy mpg values:
pl <- ggplot(df, aes(x=hwy)) + geom_histogram(fill='red', alpha=0.5, bins = 20)

print(pl)

# 2. barplot of car counts per manufacturer with color fill defined by cyl count

pl2 <- ggplot(df, aes(x=manufacturer)) + geom_bar(aes(fill=factor(cyl)))
print(pl2)                                                  


#################### txhosung data set ##########################
df2 <- txhousing
# 3. Create a scatter plot of volume versus sales.
# Play around with alpha and color to clarify information

pl3 <- ggplot(df2, aes(x=sales, y=volume)) + geom_point(color='blue', alpha = 0.5) 
print(pl3)


# 4. Smooth fit line to the scatterplot from above
pl4 <- pl3 + geom_smooth(color='red')
print(pl4)
