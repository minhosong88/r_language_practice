## ggplot2 is the most popular visualization pacakage in R
# ggplot syntax
## ggplot(data = data,aes(x= col1 , y= col2 )) + geom_point() //point plot
## Basic: data, aesthetics(aes), geometries(geom)
## NEXT: facets=> ex) facet_grid(col~.) : saparate plots by col
##       statistics( ex) stat_smooth())
##       coordinates( ex) coord_cartesian(xlim = c(val1, val2 etc)))
##       theme: ex) + theme_bw() 
## ggplot2 cheatsheet is in google

library(ggplot2)
library(ggplot2movies)

# Data & Aesthetics
# Histogram is for a single feature for its frequency
pl <- ggplot(movies, aes(x=rating))

# Geometry (alpha = transparency(0-1), color = outline, fill = fill the bar)
pl2 <- pl + geom_histogram(binwidth = 0.1, color='red', fill='pink', alpha = 0.5)

# Advanced technique at geometry layer with aes
# ..count.. change the intensity of the color depending on the count value
pl4 <- pl + geom_histogram(binwidth = 0.1, aes(fill=..count..))
print(pl4)
                           
# Modify x label and y label
pl3 <- pl2 + xlab('Movie Rating') + ylab("Count")

# Add title and modify the placement of the title(with theme)
pl3 + ggtitle("Movie Rating") + theme(plot.title =  element_text(hjust = 0.5))

