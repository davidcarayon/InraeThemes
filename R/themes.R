#' Theme ggplot aux couleurs INRAE
#'
#' Ce theme ggplot correspond aux couleurs issues de la charte graphique INRAE V3.
#'
#' @param base_size base size
#' @param base_family base family
#'
#' @return
#' @import ggplot2
#' @export
theme_inrae <- function(base_size = 15, base_family = "Avenir Next Pro") {

  # Global colors
  blue  <- palette_inrae()["inrae_bleu"]
  green <- palette_inrae()["inrae_vert"]
  white <- "#FFFFFF"
  grey  <- "#4e5352"
  inrae <- palette_inrae()["inrae_fonce"]
  inrae_sombre <- palette_inrae()["inrae_sombre"]
  # Starts with theme_grey and then modify some parts
  theme_grey(base_size = base_size, base_family = base_family) %+replace%

    ggplot2::theme(

      # Base Inherited Elements
      line = ggplot2::element_line(colour = grey, size = 0.5, linetype = 1,lineend = "butt"),
      rect = ggplot2::element_rect(fill = white, colour = blue,size = 0.5, linetype = 1),
      text = ggplot2::element_text(family = base_family, face = "plain",
                                   colour = inrae_sombre, size = base_size,
                                   lineheight = 0.9, hjust = 0.5, vjust = 0.5, angle = 0,
                                   margin = ggplot2::margin(), debug = FALSE),

      # Axes
      axis.line = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(size = rel(0.8)),
      axis.ticks = ggplot2::element_line(color = grey, size = rel(1/3)),
      axis.title = ggplot2::element_text(size = rel(1.0), face = "bold"),

      # Panel
      panel.background   = ggplot2::element_rect(fill = white, color = NA),
      panel.border       = ggplot2::element_rect(fill = NA, size = rel(1/2), color = blue),
      panel.grid.major   = ggplot2::element_line(color = grey, size = rel(1/5), linetype = "longdash"),
      panel.grid.minor   = ggplot2::element_blank(),
      panel.grid.minor.x = ggplot2::element_blank(),
      panel.spacing      = ggplot2::unit(.75, "cm"),

      # Legend
      legend.key         = ggplot2::element_rect(fill = white, color = NA),
      legend.position    = "top",
      legend.title = element_text(face = "bold"),

      # Strip (Used with multiple panels)
      strip.background   = ggplot2::element_rect(fill = inrae_sombre, color = blue),
      strip.text         = ggplot2::element_text(color = white, size = ggplot2::rel(0.8), margin = ggplot2::margin(t = 5, b = 5)),

      # Plot
      plot.title = ggplot2::element_text(family = "Raleway",
                                         color = inrae,
                                         face = "bold",
                                         size = rel(1.2), hjust = 0,
                                         margin = ggplot2::margin(t = 0, r = 0, b = 4, l = 0, unit = "pt")),
      plot.subtitle = ggplot2::element_text(family = "Raleway",
                                            color = inrae,
                                            face = "bold",
                                            size = rel(0.9), hjust = 0,
                                            margin = ggplot2::margin(t = 0, r = 0, b = 3, l = 0, unit = "pt")),

      # Complete theme
      complete = TRUE
    )
}
