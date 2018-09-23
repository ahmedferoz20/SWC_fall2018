# 2nd Script
# This script coputes the average GDP for a country using 
# lcation of the data
filename <- 'unix_shell/Data/gapminder.txt'

# read the data file

gapminder <- read.table(filename, header = TRUE)

getAverageGDPperCapita <- function(country,gapminder) {
  # select country where you want to parse out GDP
  selectedCountryData <- gapminder[gapminder$country==country,"gdpPercap"]
  mean(selectedCountryData)
  
}
gdpUSA <- getAverageGDPperCapita("United_States", gapminder)
print(gdpUSA)
