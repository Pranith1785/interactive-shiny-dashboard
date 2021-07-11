
### Libraries

library(shiny)
library(shinydashboard)

library(dplyr)
library(nycflights13)

library(rlang)
library(stringr)
library(purrr)

library(DT)
library(r2d3)


airlines_list <- airlines %>% split(.$name) %>% map(~ .$carrier)
month_list <- as.list(1:12) %>% set_names(month.name)
month_list$'All Years' <- 99


airlines <- airlines 
flights <- flights
airports <-  airports

