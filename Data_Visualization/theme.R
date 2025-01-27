# Themes
# for making the plot more beautiful

library(ggplot2)
library(ggthemes)
# Setting a theme for all the plot from here
# theme_set(theme_minimal()) : minimal
# theme_set(theme_dark()): dark background


df <- mtcars
pl <- ggplot(df, aes(x = wt, y=mpg)) + geom_point()

print(pl + theme_wsj())
