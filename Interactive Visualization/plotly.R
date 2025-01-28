#plotly for interactive visualizatino
# https://plot.ly
# install.packages('plotly')

library(ggplot2)
library(plotly)

# ggplot2
pl <- ggplot(mtcars, aes(mpg, wt)) +geom_point()
print(pl)


# ggplotly
# Converts ggplot to interactive plotly format
gpl <- ggplotly(pl) 

print(gpl)
