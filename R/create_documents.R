#' Create a Quarto report/book template with INRAE theme
#'
#' @param dir the directory where the template will be copied to
#' @param change_dir should the working directory be changed to dir ?
#'
#' @return a quarto book template
#' @export
create_book <- function(dir = "quarto-inrae-book", change_dir = TRUE){

  if (!dir.exists(dir)) {dir.create(dir)}

  # Creating folders --------------------------------------------------------
  path <- system.file("quarto/templates/quarto-inrae-book", package = "InraeThemes")
  file.copy(list.files(path, full.names = TRUE), dir, recursive = TRUE)

  cli::cli_alert_info(paste0("INRAE book/report template copied to'", paste0(dir,"/quarto-inrae-book","'")))

  if(change_dir) {

  setwd(file.path(dir))
  cli::cli_alert_warning(paste0("Working directory changed to '", paste0(dir),"'"))

  }

}





