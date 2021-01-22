#' Copy a LaTeX template for reports
#'
#' Template proposed by E. Quinton (INRAE/EABX)
#'
#' @param dir the directory where the template will be copied to
#'
#' @return a full latex template
#' @export
latex_report <- function(dir = "MyProject"){

  if (!dir.exists(dir)) {dir.create(dir)}

  # Creating folders --------------------------------------------------------
  path <- system.file("Latex_templates/latex_report", package = "InraeThemes")
  file.copy(path, dir, recursive = TRUE)

  setwd(file.path(dir,"latex_report"))
  cli::cli_alert_warning(paste0("Working directory changed to '", paste0(dir,"/latex_report","'")))


  cli::cli_alert_info(paste0("Now opening '", "document_inrae.tex","'"))
  rstudioapi::navigateToFile("document_inrae.tex")


}


#' Copy a LaTeX template for presentations
#'
#' Template proposed by E. Quinton (INRAE/EABX)
#'
#' @param dir the directory where the template will be copied to
#'
#' @return a full latex presentation template
#' @export
latex_presentation <- function(dir = "MyProject"){

  if (!dir.exists(dir)) {dir.create(dir)}

  # Creating folders --------------------------------------------------------
  path <- system.file("Latex_templates/latex_presentation", package = "InraeThemes")
  file.copy(path, dir, recursive = TRUE)

  setwd(file.path(dir,"latex_presentation"))
  cli::cli_alert_warning(paste0("Working directory changed to '", paste0(dir,"/latex_presentation","'")))


  cli::cli_alert_info(paste0("Now opening '", "modele_beamer_inrae.tex","'"))
  rstudioapi::navigateToFile("modele_beamer_inrae.tex")


}
