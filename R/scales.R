#' INRAE color palette
#'
#' This color palette is based on colors from INRAE's design system.
#'
#' @return a named vector of colors
#' @export
inrae_colors <- function() {
  c(
    "institutional" = "#00a3a6",
    "complementary1" = "#9dc544",
    "complementary2" = "#423089",
    "complementary3" = "#ed6e6c",
    "complementary4" = "#c4c0b3",
    "complementary5" = "#9ed6e3",
    "complementary6" = "#797870"
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
  discrete_scale("fill", "inrae", palette = scales::manual_pal(inrae_colors()), ...)
}

#' INRAE color palette
#'
#' @param ... Other arguments to \code{discrete_scale}.
#'
#' @return a color scale
#' @import scales
#' @export
scale_color_inrae <- function(...) {
  discrete_scale("color", "inrae", palette = scales::manual_pal(inrae_colors()), ...)
}
