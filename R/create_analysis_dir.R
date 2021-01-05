#' Architecture type d'une analyse
#'
#' @param dir Le nom du dossier
#'
#' @return
#' @export
#'
#' @examples
#' library(InraeThemes)
#' \dontrun{new_analysis()}
new_analysis <- function(dir = "MyProject"){

  if (!dir.exists(dir)) {dir.create(dir)}
  setwd(dir)

  cli::cli_alert_warning(paste0("Working directory changed to '", dir,"'"))

# Creating folders --------------------------------------------------------
  dir.create("data")
  dir.create("docs")
  dir.create("plots")
  dir.create("R")
  dir.create("raw-data")

# Generating a README -----------------------------------------------------
  file.create("README.md")
  sink("README.md")
  cat(paste0("Welcome to ",dir," !
  This project is about..."))
  sink()

# Generating a notebook ---------------------------------------------------
  file.create("R/01_notebook.Rmd")
  sink("R/01_notebook.Rmd")
  cat("---
title: \"Titre de l'analyse\"
subtitle : \"Sous titre\"
author: \"Auteur\"
date: \"Dernière M.A.J : `r format(Sys.time(), '%d %B, %Y')`\"
output:
  html_notebook:
    theme: united
    toc: true
    toc_float:
      collapsed: false
      smooth_scroll: true
    toc_depth: 3
    number_sections: false
---

# Intro {-}

Cf. [sous section](#Equations).
Citer un article [@article] (Penser à inclure le .bib dans le YAML)
Cf. section [Analyse].

# Input {-}

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

# Tableaux {-}

`Vestibulum` imperdiet^[Nullam quis sem nunc], ex vel sodales facilisis, nibh tellus imperdiet massa, sit amet scelerisque orci velit vel tellus. Ut consequat justo tincidunt porttitor varius. Suspendisse erat ipsum, feugiat vitae rhoncus non, molestie ac purus. Morbi aliquet, elit eget blandit suscipit, est lacus facilisis turpis, nec fermentum nunc felis et lorem.

::: {#Table1}
Exemple de tableau avec {gt}
:::

```{r}
gt::gt(head(mtcars)) %>% gt::tab_options(table.width = pct(100))
```

## Equations {-}

> Suspendisse potenti

Les formules LaTeX peuvent être utilisés au sein d'un paragraphe : $E=mc^2$ ou en tant qu'équation sur une ligne seule :

::: {#eq1}
:::

$$f=\\frac{a}{b+c}$$

----

Cras pulvinar ligula ac nisi porttitor, volutpat congue orci tincidunt. Pellentesque non mi congue, porta enim eget, venenatis sem. Integer suscipit vulputate tellus, eget commodo dolor gravida vel. Suspendisse gravida gravida ligula, in interdum sapien molestie ut.

### Graphiques {-}

Comme le notebook est un document HTML, vous pouvez inclure de la syntaxe CSS pour mettre en forme certains élements :

::: {.blue-box}
In ut vehicula risus.
Cf. [table](#Table1) ci-dessus
:::

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

# Conclusion {-}

Voici encore des exemples de mise en forme CSS :

::: {#box1 .green-box}
En vert
:::

::: {#box4 .orange-box}
En orange
:::


# R session info {-}

Pensez à inclure cette section afin d'indiquer l'état de votre machine lorsque vous avez réalisé cette analyse

```{r session info, comment=\"\"}
xfun::session_info()
```

# References {-}

")
  sink()

cli::cli_alert_success(paste0("A new analysis directory was created with the following directories :
├── ",dir,"
│   ├── data
│   ├── R
│   │   └── 01_notebook.Rmd
│   ├── plots
│   ├── docs
│   ├── raw_data
│   ├── README.md"))

cli::cli_alert_info(paste0("Now opening '", "R/01_notebook.Rmd","'"))
rstudioapi::navigateToFile("R/01_notebook.Rmd")

}
