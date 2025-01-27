# Exercise
library(dplyr)

head(mtcars)

# 1. Return rows of cars that have an mpg value greater than 20 and 6 cylinders
df <- mtcars

df %>% filter(mpg > 20, cyl == 6) %>% sample_n(size = 3)

# 2. Reorder the DF by cyl first, then by descending wt

df %>% arrange(cyl, desc(wt)) %>% head()

# 3. Select the columns mpg anf hp

df %>% select(mpg, hp) %>% head()

# 4. Select distinct values of the gear column
##### Behavior changed compared to old version of R
result <- distinct(select(df, gear))
rownames(result) <- NULL
print(result)
##### return as tibble can make the rownames index
distinct(select(df, gear)) %>% as_tibble()

# 5. Create a new column Performance, hp/wt
df %>% mutate(Performance = hp/wt) %>% head()


# 6.Find mean mpg using dplyr
df %>% summarise(avg_mpg = mean(mpg))


# 7. Use pipe operators to get mean hp value for cars with 6 cylinders

df %>% filter(cyl == 6) %>% select(hp) %>% summarise(avg_hp = mean(hp, na.rm = T))
df %>% filter(cyl == 6) %>% select(hp) %>% summarise(std_hp = sd(hp,na.rm = T))
