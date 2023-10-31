

# packages ----
library(hexSticker)
library(tidyverse)
library(showtext)

# fonts & colours ----
showtext_auto()
font_add_google("Creepster")
main_font <- "Creepster"

colours = tibble::tibble(
  background = "black",
  accent = "green"
)

# base plot ----

## this plot is just to satisfy the first argument of hexSticker::sticker()
base_plot <- plot_data %>%
  ggplot() +
  theme_void() +
  theme(
    panel.background = element_rect(fill = "black")
  )

base_plot

# sticker ----

sticker(base_plot,
        package = "creepr",
        p_family = main_font, 
        p_color = colours$accent,
        p_size = 42,
        p_y = 1,
        s_x = -10,
        s_y = -10,
        s_width=1.4,
        s_height=1.2, 
        h_size = 2,
        h_fill = colours$background,
        h_color = colours$accent, 
        filename = "inst/hexsticker/hexsticker.png")
