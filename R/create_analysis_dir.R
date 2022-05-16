#' Architecture type d'une analyse
#' Inpired by `ProjectTemplate`
#'
#' @param projname Name of the project to be created
#' @param init Should a git repository be initialised ?
#'
#' @return a data analysis directory
#' @export
new_analysis <- function(projname = "MyProject",init = TRUE){

  # ensure path exists
  dir.create(projname, recursive = TRUE, showWarnings = FALSE)

  # Creating folders --------------------------------------------------------
  dir.create(file.path(projname,"input"))
  dir.create(file.path(projname,"cache"))
  dir.create(file.path(projname,"scripts"))
  dir.create(file.path(projname,"docs"))
  dir.create(file.path(projname,"output"))
  dir.create(file.path(projname,"R"))
  dir.create(file.path(projname,"report"))

  # Should git init ? -------------------------------------------------------

  if(init) {gert::git_init(projname)}

  # Generating TODO ---------------------------------------------------------
  file.create(file.path(projname,"TODO.txt"))
  sink(file.path(projname,"TODO.txt"))
  cat("Welcome!

Project name:		N/A

Notes
-----


")
  sink()



  # Generating a README -----------------------------------------------------
  file.create(file.path(projname,"README.md"))
  sink(file.path(projname,"README.md"))
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

  # Generating an Rmd notebook ---------------------------------------------------
  file.create(file.path(projname,"R","01_notebook.Rmd"))
  sink(file.path(projname,"R","01_notebook.Rmd"))
  cat("---
title: \"Titre de l'analyse\"
subtitle : \"Sous titre\"
author: \"Auteur\"
date: \"Derni\u00e8re M.A.J : `r format(Sys.time(), '%d %B, %Y')`\"
output:
  html_notebook:
    toc: true
    toc_float:
      collapsed: false
      smooth_scroll: true
    toc_depth: 3
    number_sections: true
---

# Intro

# Conclusion

Pour conclure :

# R session info {-}

Pensez \u00e0 inclure cette section afin d'indiquer l'\u00e9tat de votre machine lorsque vous avez r\u00e9alis\u00e9 cette analyse.

```{r session info}
xfun::session_info()
```

# References {-}

")
  sink()

  # Generating a Qmd notebook ---------------------------------------------------
  file.create(file.path(projname,"R","01_notebook.qmd"))
  sink(file.path(projname,"R","01_notebook.qmd"))
  cat("---
title: \"Titre\"
subtitle: \"Sous-titre\"
author: \"Auteur du document\"
date: \"`r lubridate::today()`\"
license: \"Open Licence (Etalab)\"
toc: true
format:
  html:
    code-overflow: wrap
    theme: lumen
    number-sections: true
    highlight-style: github
    html-math-method: katex
    code-fold: show
    code-tools: true
    self-contained: true
execute:
  warning: false
  message: false
  out.width: \"100%\"
  df_print: kable
editor_options:
  chunk_output_type: console
---

# Intro

# Conclusion

Pour conclure :

# R session info {-}

Pensez \u00e0 inclure cette section afin d'indiquer l'\u00e9tat de votre machine lorsque vous avez r\u00e9alis\u00e9 cette analyse.

```{r session info}
xfun::session_info()
```

# References {-}

")
  sink()

}
