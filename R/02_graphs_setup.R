## Setup for graphs ==============================================================

library(ggplot2)

# load fonts (download from Google Fonts)
library(extrafont)
font_import(pattern = "Source Serif|OpenSans|Inconsolata", prompt = FALSE)
loadfonts(quiet = TRUE)
base_font_family <- "Open Sans Light"

# font size for text geoms
geom_text_font_size <- 3

# custom ggplot2 theme
theme_custom <- function() {
  theme_minimal(base_family = base_font_family) +
    theme(
      plot.background = element_rect(
        fill = "#fffffc",
        color = NA,
        size = 0.5
      ),
      #fafaf2
      plot.title = element_text(
        family = "Source Serif Pro SemiBold",
        face = "bold",
        size = 20,
        margin = margin(t = 16, b = 10)
      ),
      plot.subtitle = element_markdown(
        size = 10,
        family = "Open Sans",
        margin = margin(b = 16),
        lineheight = 1.3
      ),
      plot.caption = element_text(
        hjust = 0,
        margin = margin(t = 10, b = 6),
        color = "grey35",
        size = 7
      ),
      strip.text = element_text(family = "Open Sans SemiBold"),
      text = element_text(color = "grey25"),
      axis.text = element_text(family = "Inconsolata"),
      axis.ticks.x = element_blank(),
      legend.position = "top",
      legend.justification = "left",
      panel.grid = element_blank(),
      plot.margin = margin(l = 12, r = 12, b = 6),
      plot.title.position = "plot"
    )
}
theme_set(theme_custom())