# box plot
# graphically depicting the groups of
# numerical data

library(ggplot2)
df <- mtcars

# DATA & Aesthetics
pl <- ggplot(df, aes(x=cyl, y=mpg)) ## Not good

# Mistakes: # Do not add too much to box plot since box plot itself delivers a lot of information
## Box plot on x-axis must be categorical
pl <- ggplot(df, aes(x=factor(cyl), y=mpg)) ## modified
print(pl+geom_boxplot())


# flipping the coordinate
print(pl+geom_boxplot() + coord_flip())

print(pl + geom_boxplot(aes(fill = factor(cyl)))+ theme_dark())


################ BOX PLOT INTERPRETATION #########################
# the bottom and the top of the box : 1st and 3rd quartiles
# band inside the box is median
# Ends of the whiskers: smallest and largest values within 1.5 × IQR 
# IQR =Q3−Q1(interquartile range)
# Outliers: points beyond Q1 - 1.5 x IQR or Q3 + 1.5 x IQR 
# Center of the Data[median]: where most data is concentrated.
# Spread of the Data: Longer boxes indicate more variability.
# Symmetry vs Skewness:If the median is closer to Q1 or Q3, the data is skewed.
# Outliers:  extreme values worth investigating.
# When comparing multiple box plots side-by-side, assess differences in medians, IQRs, and the presence of outliers
# Whiskers:
# whiskers are closer together, confirming lower variability.
# longer whiskers, showing a wider range of values within 1.5×IQR.
# Low Variability → Stability, reliability, or uniform conditions.
# High Variability → Diversity, inequality, or potential issues requiring further investigation.