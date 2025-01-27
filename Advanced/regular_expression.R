# Regular expression

# grepl : Logical
# grep  : index

text <- "Hi, there. Do you know who you are voting for?"

# check if 'voting'  exist in 'text': return boolean
grepl('voting', text)
grepl('dog', text)
grepl('Do',text)


v <- c('a', 'b','c','d','e')
grepl('b', v)
# grep returns all the index of the pattern matching string
grep('b', v)



# Regular expression 
# ^_: begin with _ || apple : ^a will match the beginning a 
# _$: end with _   || apple : e$ will match the ending e
# . : match any single char except newline
# * : 0 or more times occurrence || apple: ^a.* will match beginning a and any single char occurring behind a 


v <- c('apple', 'avocade','ample', 'bapple')
grep('^a.*e$', v)
grepl('^a.*e$', v)
