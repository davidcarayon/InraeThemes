#' Create analysis directory template
#'
#' @param dir the directory where the template will be created
#'
#' @return
#' @export
#'
#' @examples
#' library(InraeThemes)
#' # create_analysis_dir(getwd())
create_analysis_dir <- function(dir = getwd()){

  path <- system.file("template_analyse", package = "IDEATools")

  if (!dir.exists(dir)) dir.create(dir)

  file.copy(path, dir, recursive = TRUE)

}
