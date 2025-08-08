# load packages ----
library(shiny)
library(shinythemes)
library(bslib)
library(openxlsx2)
library(dplyr)
library(tidyr)
library(stringr)
library(ggplot2)
library(deeptime)
library(tidyquant) ## if using geom_ma() for moving avg


# default themes ----

# define custom themes and scales ----
theme_13C_age <- theme(
  strip.background = element_rect(colour = "black", fill = "white"),
  legend.position = "bottom"
)


# load data ----
infile <- openxlsx2::wb_load(
  file = file.path("data", "Bowyer2024_SciAdv_SD1_expanded.xlsx")
)

indata <- openxlsx2::wb_to_df(
  file = infile,
  sheet = "d13Ccarb_age_models_550-510Ma",
  start_row = 2
)

indata_d13c <- indata %>%
  dplyr::select(
    Region, 
    `δ13Ccarb (‰)`,
    starts_with("[Model"), 
    `Crude lithofacies association`
  ) %>%
  dplyr::rename(
    d13C = `δ13Ccarb (‰)`
  ) %>%
  dplyr::rename_with(
    ~ gsub("].*", "", .x),
    starts_with("[Model")
  ) %>%
  dplyr::rename_with(
    ~ gsub("\\[", "", .x),
    starts_with("[Model")
  ) %>%
  dplyr::mutate(
    Region = ifelse(
      str_detect(Region, "^Morocco"), 
      "Morocco", 
      ifelse(
        str_detect(Region, "^Laurentia. Mexico."),
        "Laurentia (Mexico)", 
        Region
      )
    )
  )

data_13c_plot <- indata_d13c %>%
  tidyr::pivot_longer(
    cols = starts_with("Model"),
    names_to = "Age_model",
    values_to = "Age_Ma"
  )
