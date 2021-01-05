#' Template Bookdown respectant la charte graphique INRAE
#'
#' @param dir Le dossier dans lequel copier le projet bookdown
#'
#' @return
#' @export
bookdown_inrae <- function(dir = "MyProject"){

  if (!dir.exists(dir)) {dir.create(dir)}

  templates <- system.file("Bookdown_Inrae", package = "InraeThemes")

  file.copy(templates, dir, recursive = TRUE)

  setwd(file.path(dir,"Bookdown_Inrae"))

  cli::cli_alert_warning(paste0("Working directory changed to '", file.path(dir,"Bookdown_Inrae"),"'"))

  cli::cli_alert_info(paste0("Now opening '", "index.Rmd","'"))
  rstudioapi::navigateToFile("index.Rmd")

}
