
<!-- README.md is generated from README.Rmd. Please edit that file -->

# InraeThemes <img src='man/figures/logo_hex.png' align="right" height="139" />

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

InraeThemes est un package proposant une variété de templates
(Rmarkdown), de thèmes (ggplot) et de fonctions utilitaires qui
respectent la charte graphique INRAE.

**Attention : Ces modèles nécessitent l’installation de 2 polices
adoptées dans la charte graphique INRAE : “Raleway” et “Avenir Next
Pro”.**

# Installation

Le package peut-être installé via :

``` r
# install.packages("remotes")
remotes::install_github("davidcarayon/InraeThemes")
```

# Création d’un répertoire d’analyse

Ce package propose une architecture type de dossier d’analyse de
données. En appelant cette fonction, l’utilisateur va créer un
répertoire complet dédié à un projet et prêt à l’emploi.

``` r
new_analysis(dir = "MyProject")
```

Va donner l’architecture suivante :

    ├── MyProject
    │   ├── data
    │   ├── R
    │   │   └── 01_notebook.Rmd
    │   ├── plots
    │   ├── raw-data
    │   ├── README.md

Une proposition de *notebook* sera directement ouvert sur Rstudio pour
démarrer les analyses.

# Mise à disposition de modèles Rmarkdown INRAE

Ce package permet également de rédiger des rapports et/ou présentations
pré-formatés au style INRAE via un plugin RStudio. Les modèles sont
accessibles via `File > New File > Rmarkdown > From Template`.

## Rapport INRAE Pagedown

Cette première fonction permet de produire un rapport HTML et/ou PDF (au
choix) en utilisant le package {pagedown}. Le template Rmd est livré
avec une feuille de style CSS correspondant aux couleurs INRAE ainsi que
différents graphismes (logo, dernière page, etc.)

L’utilisateur pourra choisir d’utiliser `chrome_print` au moment de la
compilation pour obtenir un fichier PDF en plus de la sortie HTML.

![](man/figures/cap_rapport.png)

## Présentation INRAE RevealJS

Cette seconde fonction permet de produire une présentation HTML
utilisant la technologie RevealJS (présentation web en 2 dimensions).

Le template Rmd est livré avec une feuille de style CSS correspondant
aux couleurs INRAE ainsi que différents graphismes (logo, première page,
etc.)

L’utilisateur pourra choisir d’utiliser `chrome_print` au moment de la
compilation pour obtenir un fichier PDF en plus de la sortie HTML.

![](man/figures/cap_reveal.png)

## Présentation INRAE RemarkJS

Cette seconde fonction permet de produire une présentation HTML
utilisant la technologie RemarkJS.

Le template Rmd est livré avec une feuille de style CSS correspondant
aux couleurs INRAE ainsi que différents graphismes (logo, première page,
etc.)

L’utilisateur pourra choisir d’utiliser `chrome_print` au moment de la
compilation pour obtenir un fichier PDF en plus de la sortie HTML.

![](man/figures/cap_remark.png)

## TO-DO

  - Rapport Bookdown
  - Rapport Word

## Thèmes ggplot

Voici un exemple de graphique utilisant un thème proposé dans le
package, `theme_quant()`, inspiré du package `{tidyquant}`.

``` r
library(InraeThemes)
library(ggplot2)

ggplot(midwest, aes(x=area, y=poptotal)) +
  geom_point(aes(col=state)) +
  geom_smooth(method="loess", se=F) +
  xlim(c(0, 0.1)) +
  ylim(c(0, 500000)) +
  facet_wrap(~state, scales = "free") +
  labs(subtitle="Area Vs Population",
       y="Population",
       x="Area",
       title="Scatterplot",
       caption = "Source: midwest") +
  scale_color_quant()+
  theme_quant()
#> Warning: Removed 15 rows containing non-finite values (stat_smooth).
#> Warning: Removed 15 rows containing missing values (geom_point).
```

<img src="man/figures/README-example-1.png" width="100%" />
