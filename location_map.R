
# install.packages("tidyverse") 
#replace the name of the package within "" to install package
#use instal.packages c("a", "b", "c") for installing multiple packages at once 
#install from github/bitbucket
# devtools::install_github("dkahle/ggmap")
#use bioclite("package name to install from bioconductor")


#load packages


library("ggmap")
library("ggplot2")
library("sp")
library("RColorBrewer")
library("forcats")
library("tidyverse")

#get geocordinates for location

location <- geocode("New delhi", source = "dsk")

lat <- location$lat
lon <- location$lon

#download the map

#for more information on the get_map function use ?get_map

map <- get_map(location = c(lon = mean(lon), lat = mean(lat)), zoom = "auto",
               maptype =  "roadmap" , source = "google", color = c("color", "bw"), language = "en-EN")


#zoom can be set to "auto" to scale the map automatically

#visualize the map
ggmap(map)

