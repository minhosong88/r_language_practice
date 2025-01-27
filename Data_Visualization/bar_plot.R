# bar plots
# for categorical data on x-axis than continuous
# y-axis is count
library(ggplot2)
df <- mpg

pl <- ggplot(df, aes(x=class))

# Histogram has continuous data on x
# bar chart has categorical data on x
pl + geom_bar()

# color the bar based on other column's value

print(pl + geom_bar(aes(fill=drv)))

# Position adjustment is possible especially for bar chart
print(pl + geom_bar(aes(fill=drv),position= 'dodge'))
# dodge splits bar into different categories stacking separately


print(pl + geom_bar(aes(fill=drv),position= 'fill'))
# fill is showing percentages


