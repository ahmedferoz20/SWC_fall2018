#set working directory
setwd("~/Desktop/SWC_fall2018")

sqrt(64)
sqrt(65)
x <- sqrt(64)
fahr_to_kelvin <- function(fahr) {
  kelvin <- ((fahr -32) * (5/9)) + 273.15
  kelvin
}

fahr_to_kelvin(32)

print(paste("Boiling point of water:", fahr_to_kelvin(212)))

kelvi_celcius <- function(temp) {
  celcius <- temp-273.15
  celcius
}      

print(paste("Absoulte zero in celcius:", kelvi_celcius(278))) 



kelvin_to_celsius <- function(temp) {
  celsius <- temp -273.15
  celsius
}


fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  result
}

print(paste("Freezing point of water in celsius", fahr_to_celsius(32.0)))


fence <- function(original,wrapper) {
  fence <- result <- paste0(wrapper, original,wrapper)
  return(result)

  
}

fence("Feroz","____")

fence("___","Feroz")

# ist Script


# lcation of the data
filename <- 'unix_shell/Data/gapminder.txt'

# read the data file

gapminder <- read.table(filename,header = TRUE)
