#' Opiniated data analysis directory structured
#'
#' @param projname Name of the project to be created
#' @param init Should a git repository be initialised ?
#'
#' @return a data analysis directory
#' @export
new_analysis <- function(projname = "MyProject", init = TRUE) {
  # ensure path exists
  dir.create(projname, recursive = TRUE, showWarnings = FALSE)

  # Creating folders --------------------------------------------------------
  dir.create(file.path(projname, "input"))
  dir.create(file.path(projname, "cache"))
  dir.create(file.path(projname, "scripts"))
  dir.create(file.path(projname, "docs"))
  dir.create(file.path(projname, "output"))
  dir.create(file.path(projname, "R"))
  dir.create(file.path(projname, "report"))

  # Should git init ? -------------------------------------------------------

  if (init) {
    gert::git_init(projname)
  }

  # Generating TODO ---------------------------------------------------------
  file.create(file.path(projname, "TODO.txt"))
  sink(file.path(projname, "TODO.txt"))
  cat("Welcome!

Project name:		N/A

Notes
-----


")
  sink()



  # Generating a README -----------------------------------------------------
  file.create(file.path(projname, "README.md"))
  sink(file.path(projname, "README.md"))
  cat("> Welcome to Your project !

Description of the project's architecture :

-   `README.md` : The intro file is used to provide project orientation. The file defines project objectives and is intended to introduce project data, source code and configurations for repeatable research. The md file format is that of a basic text or markdown file. When saved to GitHub, it will be used to create an HTML project wiki.

-   `TODO.txt` : A note file on a project's development or implementation status with a list of bugs and future improvement needs.

-   `cache` : The cache is used to store data output.

-   `input` : The data directory stores all data inputs in raw format.

-   `docs` : Here you can store any source or reference material about the project.

-   `output` : Used to store image output, including Rplots, image files or gif animations.

-   `R` : R source code (Plain R files or Rmd/Qmd notebooks)

-   `report` : Used to store output tables and reports. R is capable of supporting a broad range of outputs including Word, Powerpoint, pdf, LaTeX and HTML.

-    `scripts` : Scripts other than R (SQL, python...)")

  sink()
}
