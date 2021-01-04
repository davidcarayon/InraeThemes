#' Create analysis directory template
#'
#' @param dir the directory where the analysis template will be created
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

Refer to a [sub section](#sub-analysis).
Citing an article [@article].
Refer to section [Analysis].

# Input {-}

Loading libraries:
```{r Load libraries, message = FALSE}
library(InraeThemes)
library(gt)
library(magrittr)
library(ggplot2)
library(xfun)
```

# Analysis {-}

`Vestibulum` imperdiet^[Nullam quis sem nunc], ex vel sodales facilisis, nibh tellus imperdiet massa, sit amet scelerisque orci velit vel tellus. Ut consequat justo tincidunt porttitor varius. Suspendisse erat ipsum, feugiat vitae rhoncus non, molestie ac purus. Morbi aliquet, elit eget blandit suscipit, est lacus facilisis turpis, nec fermentum nunc felis et lorem.

::: {#Table1}
A nice table example:
:::

```{r}
gt::gt(head(mtcars)) %>% gt::tab_options(table.width = pct(100))
```

## Sub analysis {-}

> Suspendisse potenti

We can have math formulas inline like this: $E=mc^2$ or make them span an entire line like this:

::: {#eq1}
:::

$$f=\\frac{a}{b+c}$$

**Create a horizontal line** using [markdown syntax](https://commonmark.org/help/):

----

Cras pulvinar ligula ac nisi porttitor, volutpat congue orci tincidunt. Pellentesque non mi congue, porta enim eget, venenatis sem. Integer suscipit vulputate tellus, eget commodo dolor gravida vel. Suspendisse gravida gravida ligula, in interdum sapien molestie ut.

### Yet another analysis {-}

::: {.blue-box}
In ut vehicula risus.
Refer to the [table](#Table1) above!
:::

```{r example plot, warning = FALSE, fig.align='center'}
options(scipen=999)  # turn-off scientific notation like 1e+48
theme_set(theme_bw())  # pre-set the bw theme.
data(\"midwest\", package = \"ggplot2\")
# midwest <- read.csv(\"http://goo.gl/G1K41K\")  # bkup data source

# Scatterplot
gg = ggplot(midwest, aes(x=area, y=poptotal)) +
  geom_point(aes(col=state, size=popdensity)) +
  geom_smooth(method=\"loess\", se=F) +
  xlim(c(0, 0.1)) +
  ylim(c(0, 500000)) +
  labs(subtitle=\"Area Vs Population\",
       y=\"Population\",
       x=\"Area\",
       title=\"Scatterplot\",
       caption = \"Source: midwest\")

plot(gg)
```

Remember [equation 1](#eq1)!

# Conclusion {-}

::: {#box1 .green-box}
Wrapping it up!
:::

::: {#box4 .orange-box}
An orange box!!!
:::

# R session info {-}

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

cli::cli_alert_info(paste0("Now opening '", "README.md","'"))
rstudioapi::navigateToFile("README.md")

}
