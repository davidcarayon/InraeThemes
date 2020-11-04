
#' Title
#'
#' @param ...
#'
#' @return
#' @import scales
#' @export
scale_fill_inrae <- function(...){
  discrete_scale("fill","inrae",manual_pal(values = c("#00a3a6","#275662","#66c1bf","#008c8e")), ...)
}

#' Title
#'
#' @param ...
#'
#' @return
#' @export
#' @import scales
scale_color_inrae <- function(...){
  discrete_scale("color","inrae",manual_pal(values = c("#00a3a6","#275662","#66c1bf","#008c8e")), ...)
}


#' Title
#'
#' @param ...
#'
#' @return
#' @import scales
#' @export
scale_fill_inrae_n5 <- function(...){
  discrete_scale("fill","inrae",manual_pal(values = c("#275662","#008C56","#66C1BF","#9ED6E3","#C4C0B3")), ...)
}

#' Title
#'
#' @param ...
#'
#' @return
#' @import scales
#' @export
scale_color_inrae_n5 <- function(...){
  discrete_scale("color","inrae",manual_pal(values = c("#275662","#008C56","#66C1BF","#9ED6E3","#C4C0B3")), ...)
}

palette_light <- function() {
  c(
    blue         = "#2c3e50", # blue
    red          = "#e31a1c", # red
    green        = "#18BC9C", # green
    yellow       = "#CCBE93", # yellow
    steel_blue   = "#a6cee3", # steel_blue
    navy_blue    = "#1f78b4", # navy_blue
    light_green  = "#b2df8a", # light_green
    pink         = "#fb9a99", # pink
    light_orange = "#fdbf6f", # light_orange
    orange       = "#ff7f00", # orange
    light_purple = "#cab2d6", # light_purple
    purple       = "#6a3d9a"  # purple
  ) %>% toupper()
}


#' Title
#'
#' @param ...
#'
#' @return
#' @import scales ggplot2
#' @export
scale_color_quant <- function(...) {

  pal <- rep(unname(palette_light()), 100)

  scale_color_manual(values = pal)
}

#' Title
#'
#' @param ...
#'
#' @return
#' @import scales ggplot2
#' @export
scale_fill_quant <- function(...) {

  pal <- rep(unname(palette_light()), 100)

  scale_fill_manual(values = pal)
}
