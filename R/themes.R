#' ggplot theme with INRAE colors
#'
#' This ggplot theme uses colors and fonts defined in INRAE's design system
#'
#' @param base_size base size
#'
#' @return a ggplot theme
#' @import ggplot2
#' @export
theme_inrae <- function(base_size = 15) {
  # Global colors
  blue <- palette_inrae()["inrae_bleu"]
  green <- palette_inrae()["inrae_vert"]
  white <- "#FFFFFF"
  grey <- "#4e5352"
  inrae <- palette_inrae()["inrae_fonce"]
  inrae_sombre <- palette_inrae()["inrae_sombre"]

  # Starts with theme_grey and then modify some parts
  theme_light(base_size = base_size) %+replace%

    ggplot2::theme(
      strip.background = element_rect(fill = "#275662", color = "white"),
      plot.title = element_text(margin = margin(5, 5, 3, 2, unit = "points"), size = rel(1.6), color = "#275662"),

      # Complete theme
      complete = TRUE
    )
}

#' Bootstrap 5 INRAE theme
#'
#' @return A bslib theme with INRAE colors
#' @export
bs_inrae <- function() {
  bslib::bs_theme(
    version = 5,
    bg = "#FFFFFF",
    fg = "#000000",
    primary = "#00a3a6",
    secondary = "#008c8e",
    success = "#9dc544",
    info = "#9ed6e3",
    warning = "#FFF100",
    danger = "#ed6e6c",
    base_font = "Roboto",
    heading_font = "Raleway"
  )
}
