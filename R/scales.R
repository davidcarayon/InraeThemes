#' INRAE color palette
#'
#' This color palette is based on colors from INRAE's design system.
#'
#' @return a named vector of colors
#' @export
palette_inrae <- function() {
  c(
    "inrae" = "#00a3a6",
    "inrae_clair" = "#66c1bf",
    "inrae_fonce" = "#008c8e",
    "inrae_sombre" = "#275662",
    "inrae_vert" = "#9dc544",
    "inrae_cyan" = "#9ed6e3",
    "inrae_bleu" = "#423089",
    "inrae_saumon" = "#ed6e6c",
    "inrae_taupe_fonce" = "#797870",
    "inrae_taupe_clair" = "#c4c0b3",
    "inrae_gris" = "#4e5352"
  )
}


#' INRAE fill palette
#'
#' @param ... Other arguments to \code{discrete_scale}.
#'
#' @return a fill scale
#' @import scales
#' @export
scale_fill_inrae <- function(...) {
  ggplot2::discrete_scale("fill", "inrae", scales::manual_pal(values = c("#00a3a6", "#ed6e6c", "#9dc544", "#423089", "#275662", "#9ed6e3", "#797870", "#c4c0b3", "#4e5352")), ...)
}

#' INRAE fill palette
#'
#' @param ... Other arguments to \code{discrete_scale}.
#'
#' @return a color scale
#' @import scales
#' @export

scale_color_inrae <- function(...) {
  ggplot2::discrete_scale("color", "inrae", scales::manual_pal(values = c("#00a3a6", "#ed6e6c", "#9dc544", "#423089", "#275662", "#9ed6e3", "#797870", "#c4c0b3", "#4e5352")), ...)
}
