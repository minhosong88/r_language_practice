# scatter_plot(geom_point())
library(ggplot2)
df <- mtcars

# Data & Aesthetic
pl <- ggplot(df, aes(x= wt, y=mpg))

# Geometry
print(pl + geom_point(size = 1, alpha = 0.5))

# size can be adjusted by the value of other columns
print(pl + geom_point(aes(size = hp)))

# since cylinder is factors, not continuous: not recommended though
print(pl + geom_point(aes(size = factor(cyl))))


# use shape instead of size for factor
print(pl + geom_point(aes(shape = factor(cyl)), size = 3))
      
# not only size, color can use the value of other columns
print(pl + geom_point(aes(shape = factor(cyl), color = factor(cyl)), size = 3))

# continuous variable gets gradient
print(pl + geom_point(aes(color = hp), size = 3))
pl2 <- pl + geom_point(aes(color = hp), size = 3)

print(pl2 + scale_color_gradient(low='blue', high='red'))

# you can use hexcolor code for color
print(pl + geom_point(size = 1, color='#56ea29'))

