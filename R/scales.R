#' Palette de couleurs INRAE
#'
#' Cette palette correspond aux couleurs issues de la charte INRAE V3.
#'
#' @return un vecteur contenant les couleurs
#' @export
palette_inrae <- function() {
  c("inrae" = "#00a3a6",
    "inrae_clair" = "#66c1bf",
    "inrae_fonce" = "#008c8e",
    "inrae_sombre" = "#275662",
    "inrae_vert" = "#9dc544",
    "inrae_cyan" = "#9ed6e3",
    "inrae_bleu" = "#423089",
    "inrae_saumon" = "#ed6e6c",
    "inrae_taupe_fonce" = "#797870",
    "inrae_taupe_clair" = "#c4c0b3",
    "inrae_gris" = "#4e5352")
}


#' Echelle de remplissage INRAE
#'
#' @param ... Autres arguments pour \code{discrete_scale}.
#'
#' @return a fill scale
#' @import scales
#' @export
scale_fill_inrae <- function(...){
  ggplot2::discrete_scale("fill","inrae",scales::manual_pal(values = c("#00a3a6","#275662","#9dc544","#9ed6e3","#423089","#ed6e6c","#797870","#c4c0b3","#4e5352")), ...)
}

#' Echelle de couleur INRAE
#'
#' @param ... Autres arguments pour \code{discrete_scale}.
#'
#' @return a color scale
#' @import scales
#' @export

scale_color_inrae <- function(...){
  ggplot2::discrete_scale("color","inrae",scales::manual_pal(values = c("#00a3a6","#275662","#9dc544","#9ed6e3","#423089","#ed6e6c","#797870","#c4c0b3","#4e5352")), ...)
}
