# Date and Timestamp
today <- Sys.Date()
class(today) # Date class


#### Create date object
## When character is in a standart format
c <- "2025-01-26"
class(c) # character
my.date <- as.Date(c)
class(my.date)

## Not in a standard format
# This line is for setting the date to English
Sys.setlocale("LC_TIME", "C")
my.date <- as.Date("Jan-26-2026", format = "%b-%d-%Y")
class(my.date)
print(my.date)
my.date <- as.Date("June, 01, 2002", format="%B, %d, %Y")
class(my.date)
my.date
    ############## Format####################
    # %d: day of the month(decimal)         #
    # %m: month (decimal)                   #
    # %b: abbreviated month (jan, feb, etc) #
    # %B: month full name(January)          #
    # %y: 2 digit year                      #
    # #Y: 4 digit year                      #
    #########################################

### TIMESTAMP
## POSIXct
as.POSIXct("11:02:03", format="%H:%M:%S")



# strip time conversion from character
help("strptime")
  ############## Format####################
  # %H: hours(decimal) 00-24              #
  # %I: hours (decimal) 01-12             #
  # %M: minutes 00-59                     #
  # %T: Equivalent to %H:%M:%S.           #
  #########################################

my.time <- strptime("11:02:03", format = "%T")

# Extract hours
hours <- format(my.time, "%H")
print(hours)  # Output: "11"

# Extract minutes
minutes <- format(my.time, "%M")
print(minutes)  # Output: "02"

# Extract seconds
seconds <- format(my.time, "%S")
print(seconds)  # Output: "03"




