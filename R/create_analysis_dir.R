#' Architecture type d'une analyse
#' Inpiré du package `ProjectTemplate`
#'
#' @param projname Name of the project to be created
#' @param init Should a git repository be initialised ?
#'
#' @return
#' @export
new_analysis <- function(projname = "MyProject",init = TRUE){

  # ensure path exists
  dir.create(projname, recursive = TRUE, showWarnings = FALSE)

# Creating folders --------------------------------------------------------
  dir.create(file.path(projname,"data"))
  dir.create(file.path(projname,"cache"))
  dir.create(file.path(projname,"docs"))
  dir.create(file.path(projname,"img"))
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

-   `data` : The data directory stores all data inputs in raw format.

-   `docs` : Here you can store any source or reference material about the project.

-   `img` : Used to store image output, including Rplots, image files or gif animations.

-   `R` : R source code (Plain R files or Rmd notebooks)

-   `report` : Used to store output tables and reports. R is capable of supporting a broad range of outputs including Word, Powerpoint, pdf, LaTeX and HTML.")
  sink()

# Generating a notebook ---------------------------------------------------
  file.create(file.path(projname,"R","01_notebook.Rmd"))
  sink(file.path(projname,"R","01_notebook.Rmd"))
  cat("---
title: \"Titre de l'analyse\"
subtitle : \"Sous titre\"
author: \"Auteur\"
date: \"Dernière M.A.J : `r format(Sys.time(), '%d %B, %Y')`\"
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

Cf. [sous section](#Equations).
Citer un article [@article] (Penser à inclure le .bib dans le YAML)
Cf. section [Analyse].

# Input

On charge certains packages :

```{r packages, message = FALSE}
library(InraeThemes)
library(xfun)
library(here)
library(ggplot2)
library(gt)
library(gridExtra)
```

# Gestion des chemins d'accès

Afin de proposer une analyse facilement reproductible par quiconque, nous conseillons l'utilisation du package {here} pour la gestion des chemins d'accès.

Par exemple, pour pointer vers un jeu de données on va préférer :

```{r chemins, message = FALSE}
chemin_data <- here::here('data','donnees.csv') # Good

chemin_data <- 'data/donnees.csv' # Bad
```

# Gestion de version

Nous recommandons vivement l'utilisation d'un système de gestion de versions tel que **git**. Pour plus d'informations, vous pouvez consulter l'article dédié à git sur [le site de Rstudio](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)

# Tableaux

`Vestibulum` imperdiet^[Nullam quis sem nunc], ex vel sodales facilisis, nibh tellus imperdiet massa, sit amet scelerisque orci velit vel tellus. Ut consequat justo tincidunt porttitor varius. Suspendisse erat ipsum, feugiat vitae rhoncus non, molestie ac purus. Morbi aliquet, elit eget blandit suscipit, est lacus facilisis turpis, nec fermentum nunc felis et lorem.

::: {#Table1}
Exemple de tableau avec {gt}
:::

```{r}
gt::gt(head(mtcars)) %>% gt::tab_options(table.width = pct(100))
```

## Equations
> Suspendisse potenti

Les formules LaTeX peuvent être utilisés au sein d'un paragraphe : $E=mc^2$ ou en tant qu'équation sur une ligne seule :

::: {#eq1}
:::

$$f=\\frac{a}{b+c}$$

----

Cras pulvinar ligula ac nisi porttitor, volutpat congue orci tincidunt. Pellentesque non mi congue, porta enim eget, venenatis sem. Integer suscipit vulputate tellus, eget commodo dolor gravida vel. Suspendisse gravida gravida ligula, in interdum sapien molestie ut.

### Graphiques

On reprend un des exemples proposés dans le README du package InraeThemes :

```{r example, message = FALSE, fig.width = 14, fig.height=8, dpi = 320}
## On charge les données d'exemple du package
data(\"example_datasets\")

## On construit 4 graphiques d'exemple, stockés dans une même liste
display <- list(
  ggplot(example_datasets$www, aes_string(x = 'Minute', y = 'Users',
                                          color = 'Measure',
                                          shape = 'Measure')) +
    geom_line() +
    geom_point(size = 3) +
    facet_wrap(~Measure) +
    geom_point(size = 1.8) +
    scale_color_inrae() +
    scale_shape_manual(values = c(15, 16)) +
    labs(title = \"Titre\", subtitle = \"Sous-titre\") +
    theme_inrae(),

  ggplot(example_datasets$cars, aes_string(x = 'mpg', fill = 'cyl',
                                           colour = 'cyl')) +
    geom_density(alpha = 0.75) +
    scale_fill_inrae() +
    scale_color_inrae() +
    labs(fill = 'Cylinders', colour = 'Cylinders', x = 'MPG', y = 'Density') +
    theme_inrae(),

  ggplot(example_datasets$dia, aes_string(x = 'price', fill = 'cut')) +
    geom_histogram(binwidth = 850) +
    xlab('Price (USD)') +
    ylab('Count') +
    scale_fill_inrae() +
    scale_x_continuous(label = function(x) paste0(x / 1000, 'k'))+
    theme_inrae(),

  ggplot(example_datasets$drivers, aes_string(x = 'Year', y = 'Deaths',
                                              fill = \"Year\")) +
    geom_boxplot(size = 0.25) +
    ylab('Monthly Deaths') +
    theme_inrae() +
    scale_fill_inrae() +
    coord_flip() +
    labs(caption = \"Caption\")
)

# On assemble
do.call(gridExtra::grid.arrange,  display)
```

# Conclusion

Pour conclure :

# R session info {-}

Pensez à inclure cette section afin d'indiquer l'état de votre machine lorsque vous avez réalisé cette analyse

```{r session info, comment=\"\"}
xfun::session_info()
```

# References {-}

")
  sink()

}
