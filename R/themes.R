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



