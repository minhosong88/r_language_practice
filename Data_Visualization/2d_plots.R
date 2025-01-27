# 2 variable plotting with ggplot2

library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies, aes(x=year, y=rating))

## bin 2d: like a heat map showing # of occurence.
pl2 <- pl + geom_bin2d()
# Control the high and low with scale_fill_gradient 
print(pl2 + scale_fill_gradient(high='red', low='yellow'))

# Bin width can be adjusted
pl3 <- pl + geom_bin2d(binwidth=c(1,1))
print(pl3)

# install.packages('hexbin'): points are shaped hexbin
pl3 <- pl + geom_hex() +scale_fill_gradient(high='red', low='yellow')
print(pl3)


# Density plot( seem like a contour)
pl4 <- pl + geom_density2d()
print(pl4)
