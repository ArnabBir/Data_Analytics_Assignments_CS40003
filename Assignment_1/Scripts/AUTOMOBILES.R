Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

AUTOMOBILES <- read.csv("../Data/AUTOMOBILES.csv")
head(AUTOMOBILES)
names(AUTOMOBILES)

length(AUTOMOBILES$fuel.type[AUTOMOBILES$fuel.type == "gas"])
length(AUTOMOBILES$fuel.type[AUTOMOBILES$fuel.type == "diesel"])
unique(AUTOMOBILES$num.of.cylinders)
AUTOMOBILES$num_of_cylinders[AUTOMOBILES$num.of.cylinders == "four"] = as.numeric(4)
AUTOMOBILES$num_of_cylinders[AUTOMOBILES$num.of.cylinders == "six"] = as.numeric(6)
AUTOMOBILES$num_of_cylinders[AUTOMOBILES$num.of.cylinders == "five"] = as.numeric(5)
AUTOMOBILES$num_of_cylinders[AUTOMOBILES$num.of.cylinders == "twelve"] = as.numeric(12)
AUTOMOBILES$num_of_cylinders[AUTOMOBILES$num.of.cylinders == "two"] = as.numeric(2)
AUTOMOBILES$num_of_cylinders[AUTOMOBILES$num.of.cylinders == "eight"] = as.numeric(8)
AUTOMOBILES$num_of_cylinders[AUTOMOBILES$num.of.cylinders == "three"] = as.numeric(3)

mean(AUTOMOBILES$num_of_cylinders)
median(AUTOMOBILES$num_of_cylinders)
Mode(AUTOMOBILES$num_of_cylinders)

mean(AUTOMOBILES$compression.ratio)
median(AUTOMOBILES$compression.ratio)
Mode(AUTOMOBILES$compression.ratio)

AUTOMOBILES$peak.rpm <- gsub("?",0,AUTOMOBILES$peak.rpm, fixed = TRUE)
AUTOMOBILES$peak.rpm <- as.numeric(as.character(AUTOMOBILES$peak.rpm))
d <- density(as.numeric(as.character(AUTOMOBILES$peak.rpm))) # returns the density data 
plot(d, main = "Density distribution of peak-rms")

AUTOMOBILES$city.mpg <- gsub("?",0,AUTOMOBILES$city.mpg, fixed = TRUE)
AUTOMOBILES$city.mpg <- as.numeric(as.character(AUTOMOBILES$city.mpg))
d <- density(as.numeric(as.character(AUTOMOBILES$city.mpg))) # returns the density data 
plot(d, main = "Density distribution of city.mpg")

