
library(tidyverse)
library(jsonlite)
library(DT)
library(htmltools)
library(here)


#color
cols_argendata <- c("#7BB5C4", # (Light Blue)
                    "#FF9750", # (Orange)
                    "#8C9AFF", # (Light Blue-Violet)
                    "#9C9CBC", # (Grayish Blue)
                    "#848279", # (Grayish Brown)
                    "#59002D", # (Dark Red)
                    "#0076B7", # (Blue)
                    "#C44343", # (Red)
                    "#3F3FA5", # (Dark Blue)
                    "#A6CCB5", # (Pale Green)
                    "#CFCFCF", # (Light Gray)
                    "#333333") # (Dark Gray)

# STYLES
custom_css <- tags$style(HTML("
  h1 {
    color: #333333;  /* Dark gray */
  }
  h3 {
    color: #FF9750;  /* Orange */
  }
  a {
    color: #7BB5C4;  /* Light blue */
  }
  table.dataTable {
    font-family: 'Roboto', sans-serif;
  }
"))

# Title and subtitle
title <- tags$h1("geonomenclador Argendata")
subtitle <- tags$h3("Tabla armonizada de identificadores de entidades geográficas")


options(DT.options = list(language = list(url = '//cdn.datatables.net/plug-ins/1.10.11/i18n/Spanish.json')))

jsonlite::fromJSON("geonomenclador.json") %>% 
  as_tibble() %>% 
  datatable(options = list(
    lengthMenu = c(12, 25, 50), pageLength = 12, 
    dom = 'lfrtipB',
    initComplete = JS(
      "function(settings, json) {",
      "$('body').css({'font-family': 'Roboto'});",
      "$('table').css({'font-family': 'Roboto'});",
      "}")),
    rownames= FALSE) %>%
  htmlwidgets::prependContent(tags$head(tags$link(
    href = "https://fonts.googleapis.com/css2?family=Roboto&display=swap",
    rel = "stylesheet"
  ))) %>%
  htmlwidgets::prependContent(tags$head(custom_css)) %>%
  htmlwidgets::prependContent(title) %>%
  htmlwidgets::prependContent(subtitle)
