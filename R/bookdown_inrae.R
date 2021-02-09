# bookdown_inrae <- function(dir = "MyProject"){
#
#   if (!dir.exists(dir)) {dir.create(dir)}
#
#   templates <- system.file("Bookdown_Inrae", package = "InraeThemes")
#
#   file.copy(templates, dir, recursive = TRUE)
#
#   setwd(file.path(dir,"Bookdown_Inrae"))
#
#   cli::cli_alert_warning(paste0("Working directory changed to '", file.path(dir,"Bookdown_Inrae"),"'"))
#
#   cli::cli_alert_info(paste0("Now opening '", "index.Rmd","'"))
#   rstudioapi::navigateToFile("index.Rmd")
#
# }


#' Template Bookdown respectant la charte graphique INRAE
#'
#' @param dir Le dossier dans lequel copier le projet bookdown
#'
#' @return
#' @export
bookdown_inrae <- function(path, init = TRUE){


  # If init
  if(init) {gert::git_init(path)}

  # ensure directory exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # copy 'resources' folder to path
  resources <- system.file(file.path("rstudio", "templates", "project", "resources"), package = "InraeThemes")

  files <- list.files(resources, recursive = TRUE, include.dirs = FALSE)

  source <- file.path(resources, files)
  target <- file.path(path, files)
  file.copy(source, target)

}
