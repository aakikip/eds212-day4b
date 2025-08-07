#load libraries
library(GGally)

library(skimr)

library(palmerpenguins)

library(tidyverse)


view(penguins)

#take a look at the penguins data
dim(penguins) #check the dimensions

names(penguins) #check the column names

summary(penguins) #get a summary

skimr::skim(penguins) #get a summary with skimr

head(penguins) #print the first 10 rows

tail(penguins) #print the last 6 rows

#make a pairplot
GGally::ggpairs(penguins)

#make a pairplot with a select number of columns and color by species
GGally::ggpairs(penguins, columns = 3:6, ggplot2::aes(colour = species))

#make a histogram of penguin flipper lengths
ggplot(data = penguins, aes(x = flipper_length_mm, fill = species)) + geom_histogram()
