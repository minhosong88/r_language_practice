# Dplyr
# install.packages('dplyr')
# install.packages("nycflights13")
library(dplyr)
library(nycflights13)

# filter(data, condition1, condition2 etc..): select rows with matching condition
head(filter(flights,month==11,day==3,carrier=='AA'))

# slice(data, range of rows): select rows by position
slice(flights, 1:10)

# arrange(data, column name1, column name2, etc.): order by the columns.
# ascending order by default. use desc(column name) for descending order
head(arrange(flights,year,month,day,air_time))
head(arrange(flights,desc(dep_delay)))

# select(data, column name): select columns
head(select(flights,carrier)) # only shows carrier column

# rename(data, new_name1 = old_name1, new_name2 = old_name2, etc. ): rename column
head(rename(flights,airline_car = carrier))

# distinct(select(data, column)) : return a column of distinct values
distinct(select(flights,carrier))

# mutate(data, new_col(or existing col) = aggregate function): modify existing col
# or add new col with aggregate function
head(mutate(flights, new_col = arr_delay-dep_delay))

# transmute(data, new_col(or existing col) = aggregate function): show the mutated column only
head(transmute(flights, new_col = arr_delay-dep_delay))

# summarise(data, new_name = aggregate_function): return the results of aggregate function
# single row with result returned
summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE))
# na.rm = T removes NA values

# sample_n(data, decimal number) or sample_frac(data, float-percent)
# random sample of sepcified size or percentage
sample_n(flights,10)
sample_frac(flights,0.00005) 