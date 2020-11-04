#' Title
#'
#' @param ...
#'
#' @return
#' @export
theme_inrae <- function(...){
  theme(
  axis.title = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662",
    face = "bold"
  ),
  legend.title = element_text(
    family = "Raleway",
    size = 13,
    color = "#275662",
    face = "bold"
  ),
  axis.text = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662"
  ),
  legend.text = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662"
  ),
  legend.position = "top",
  strip.text = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662"
  ),
  plot.title = element_text(
    family = "Raleway",
    size = 20,
    color = "#275662"
  ),
  plot.subtitle = element_text(
    family = "Raleway",
    size = 16,
    color = "#275662"
  ),
  plot.caption = element_text(
    family = "Avenir Next Pro",
    size = 10,
    color = "#275662",
    hjust = -0.12
  ),
  panel.background = element_rect(
    color = "#275662",
    fill = "white"
  ),
  panel.grid.major.y = element_line(
    color = "grey",
    size = 0.3
  ),
  panel.grid.minor.y = element_line(
    color = "grey",
    size = 0.3,
    linetype = "dashed"
  ),
  panel.grid.minor.x = element_line(
    color = "grey",
    size = 0.3,
    linetype = "dashed"
  )
)
}




#' Title
#'
#' @param base_size base size
#' @param base_family base family
#'
#' @return
#' @export
theme_inrae_1 <- function(base_size = 10, base_family = "Avenir Next Pro") {
  theme_gray(base_size = base_size, base_family = base_family) %+replace%
    theme(
      plot.title = element_text(
        color = couleurs_inrae["vert_inrae_fonce"],
        family = "Raleway",
        face = "bold",
        size = rel(1.2),
        hjust = 0,
        vjust = 1
      ),
      plot.subtitle = element_text(
        color = couleurs_inrae["vert_inrae"],
        family = "Avenir Next Pro",
        # face = 'bold',
        size = rel(0.8),
        hjust = 0,
        vjust = 1
      ),
      plot.caption = element_text(
        color = couleurs_inrae["vert_inrae"],
        family = "Avenir Next Pro",
        hjust = 1,
        # face = 'bold',
        size = rel(0.8)
      ),
      legend.text = element_text(colour = couleurs_inrae["vert_inrae"]),
      legend.title = element_text(
        colour = couleurs_inrae["vert_inrae_fonce"],
        face = "bold",
        hjust = 0
      ),
      legend.background = element_rect(
        fill = "transparent",
        colour = NA
      ),
      legend.key = element_rect(
        fill = "transparent",
        colour = NA
      ),
      axis.ticks = element_line(color = couleurs_inrae["vert_inrae_fonce"]),
      axis.text = element_text(colour = couleurs_inrae["vert_inrae"]),
      axis.title.x = element_text(
        colour = couleurs_inrae["vert_inrae_fonce"],
        hjust = 1,
        face = "bold"
      ),
      axis.title.y = element_text(
        colour = couleurs_inrae["vert_inrae_fonce"],
        angle = 90,
        hjust = 1,
        face = "bold"
      ),
      panel.background = element_rect(
        fill = couleurs_inrae["blanc"],
        colour = couleurs_inrae["vert_inrae_fonce"]
      ),
      panel.grid.minor = element_line(
        colour = couleurs_inrae["vert_inrae_clair"],
        linetype = "dotted"
      ),
      panel.grid.major = element_line(
        colour = couleurs_inrae["vert_inrae_clair"],
        linetype = "dashed"
      ),
      plot.background = element_rect(
        fill = NA,
        colour = couleurs_inrae["vert_inrae_fonce"]
      )
    )
}

#' Title
#'
#' @param base_size base size
#' @param base_family base family
#' @import ggplot2
#'
#' @return
#' @export
theme_quant <- function(base_size = 15, base_family = "Avenir Next Pro") {

  # Tidyquant colors
  blue  <- "#2c3e50"
  green <- "#18BC9C"
  white <- "#FFFFFF"
  grey  <- "grey80"

  # Starts with theme_grey and then modify some parts
  theme_grey(base_size = base_size, base_family = base_family) %+replace%

    ggplot2::theme(

      # Base Inherited Elements
      line               =  ggplot2::element_line(colour = blue, size = 0.5, linetype = 1,
                                                  lineend = "butt"),
      rect               =  ggplot2::element_rect(fill = white, colour = blue,
                                                  size = 0.5, linetype = 1),
      text               =  ggplot2::element_text(family = base_family, face = "plain",
                                                  colour = blue, size = base_size,
                                                  lineheight = 0.9, hjust = 0.5, vjust = 0.5, angle = 0,
                                                  margin = ggplot2::margin(), debug = FALSE),

      # Axes
      axis.line          = ggplot2::element_blank(),
      axis.text          = ggplot2::element_text(size = rel(0.8)),
      axis.ticks         = ggplot2::element_line(color = grey, size = rel(1/3)),
      axis.title         = ggplot2::element_text(size = rel(1.0), face = "bold"),

      # Panel
      panel.background   = ggplot2::element_rect(fill = white, color = NA),
      panel.border       = ggplot2::element_rect(fill = NA, size = rel(1/2), color = blue),
      panel.grid.major   = ggplot2::element_line(color = grey, size = rel(1/3)),
      panel.grid.minor   = ggplot2::element_line(color = grey, size = rel(1/3)),
      panel.grid.minor.x = ggplot2::element_blank(),
      panel.spacing      = ggplot2::unit(.75, "cm"),

      # Legend
      legend.key         = ggplot2::element_rect(fill = white, color = NA),
      legend.position    = "top",
      legend.title = element_text(face = "bold"),

      # Strip (Used with multiple panels)
      strip.background   = ggplot2::element_rect(fill = blue, color = blue),
      strip.text         = ggplot2::element_text(color = white, size = ggplot2::rel(0.8), margin = ggplot2::margin(t = 5, b = 5)),

      # Plot
      plot.title         = ggplot2::element_text(size = rel(1.2), hjust = 0,
                                                 margin = ggplot2::margin(t = 0, r = 0, b = 4, l = 0, unit = "pt")),
      plot.subtitle      = ggplot2::element_text(size = rel(0.9), hjust = 0,
                                                 margin = ggplot2::margin(t = 0, r = 0, b = 3, l = 0, unit = "pt")),

      # Complete theme
      complete = TRUE
    )
}




