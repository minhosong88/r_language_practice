# Coordinates and Faceting
# Coordinates: resize or plot correctly
# Facets: juxstapose multiple plots


library(ggplot2)

pl <- ggplot(mpg, aes(x=displ, y=hwy)) + geom_point()

print(pl)

# Setting x, y limits (becomes zoom-in version)
pl2 <- pl + coord_cartesian(xlim = c(1,4), ylim = c(15,30))

# Fixing the ratio of the plot display
pl2 <- pl + coord_fixed(ratio = 1/3) # ratio is x/y (1/3: x=1, y=3)
print(pl2)


# Facets: facet_grid(rows ~ columns) Use . for no facetting in that direction.
# No meaningful change with the different display. just ways to display
pl2 <- pl + facet_grid(. ~ cyl) # split column-wise
pl3 <- pl + facet_grid(drv ~ .) # split row_wise
pl4 <- pl + facet_grid(drv ~ cyl)
print(pl2)
print(pl3)
print(pl4)
