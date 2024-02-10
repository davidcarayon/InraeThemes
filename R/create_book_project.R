#' Create a Quarto report/book template with INRAE theme
#'
#' @param dir the directory where the template will be copied to
#'
#' @return a quarto book template
#' @export
create_book <- function(dir = "quarto-inrae-book") {
  if (!dir.exists(dir)) {
    dir.create(dir)
  }

  # Creating folders --------------------------------------------------------
  path <- system.file("quarto/templates/quarto-inrae-book", package = "InraeThemes")
  file.copy(list.files(path, full.names = TRUE), dir, recursive = TRUE)
}
