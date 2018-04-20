# Exercise 5: dplyr grouped operations

# Install the `nycflights13` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
#install.packages("nycflights13")  # should be done already
library(nycflights13)
library(dplyr)

# What was the average departure delay in each month?
# Save this as a data frame `dep_delay_by_month`
# Hint: you'll have to perform a grouping operation then summarizing your data
View(flights)
flights_summary <- group_by(flights, month) %>%
  summarize(
    mean = mean(dep_delay, na.rm = TRUE)
  )

# Which month had the greatest average departure delay?
# Month 7 had the greatest delay time

# If your above data frame contains just two columns (e.g., "month", and "delay" in that order), you can create
# a scatterplot by passing that data frame to the 'plot()' function
plot(flights_summary)

# To which destinations were the average arrival delays the highest?
# Hint: you'll have to perform a grouping operation then summarize your data
# You can use the `head()` function to view just the first few rows
flights_dest <- group_by(flights, dest) %>%
  summarize(
    mean = mean(dep_delay, na.rm =TRUE)
  )
is.data.frame(flights_dest)
biggestLoc <- flights_dest[flights_dest["mean"] == max(flights_dest$mean, na.rm = TRUE)
,"dest"]  

# You can look up these airports in the `airports` data frame!


# Which city was flown to with the highest average speed?

