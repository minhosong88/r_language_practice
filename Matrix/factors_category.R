# Factor -> factor() functino

# Example
animal <- c('d', 'c', 'd', 'c', 'c')
id <- c(1,2,3,4,5)
factor(animal)
# Factor function shows factors: c, d 

# Categori: ordinal vs. Nominal
# Nominal does not have order such as c(cat), d(dog)
# Ordinal has order(does not have to be numeric)

# Non-numeric Order Example
# size: ('sm', 'm', 'l', 'xl')
size_vec <- c('sm', 'sm', 'm', 'l', 'xl', 'm', 'l', 'xl')
# factor function shows what the categories consist of 
fact.size <- factor(size_vec, ordered = T, levels= c('sm','m','l','xl'))
print(fact.size) # shows levels
print(summary(fact.size)) # Factored vector shows different summary
print(summary(size_vec))
