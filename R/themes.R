#' ggplot theme with INRAE colors
#'
#' This ggplot theme uses colors and fonts defined in INRAE's design system
#'
#' @param base_size base size
#'
#' @return a ggplot theme
#' @import ggplot2
#' @export
theme_inrae <- function(base_size = 12) {
  inrae_colors <- inrae_colors()
  theme_minimal(base_size = base_size, base_family = "Raleway") +
    theme(
      text = element_text(color = inrae_colors[1]),
      plot.title = element_text(size = rel(1.5), face = "bold"),
      plot.subtitle = element_text(size = rel(1.2), face = "italic"),
      axis.title = element_text(size = rel(1.1)),
      axis.text = element_text(size = rel(0.9), color = inrae_colors[7]),
      panel.grid.major = element_line(color = inrae_colors[5], linetype = "dotted"),
      panel.grid.minor = element_blank(),
      plot.background = element_rect(fill = "white", color = NA),
      panel.border = element_rect(color = inrae_colors[7], size = 0.5, fill = NA),
      strip.background = element_rect(fill = inrae_colors[3], color = NA),
      strip.text = element_text(size = rel(1.1), face = "bold", color = "white")
    )
}


#' gt theme with INRAE colors
#'
#' This gt theme uses colors and fonts defined in INRAE's design system
#'
#' @param gt_table a gt table
#'
#' @return a gt theme
#' @import gt
#' @export
theme_inrae_gt <- function(gt_table) {
  inrae_colors <- as.list(inrae_colors())
  gt_table |>
    tab_options(
      table.font.names = "Raleway",
      heading.title.font.size = px(20),
      heading.subtitle.font.size = px(14),
      heading.align = "left",
      table.border.top.color = inrae_colors$institutional,
      table.border.bottom.color = inrae_colors$institutional,
      column_labels.background.color = inrae_colors$institutional,
      column_labels.font.size = px(14),
      column_labels.font.weight = "bold",
      column_labels.border.bottom.color = inrae_colors$institutional,
      table_body.border.bottom.color = inrae_colors$complementary6,
      table_body.border.top.color = inrae_colors$complementary6,
      table_body.hlines.color = inrae_colors$complementary4,
      table.font.size = px(12),
      summary_row.background.color = inrae_colors$complementary4,
      summary_row.border.color = inrae_colors$institutional
    ) |>
    tab_style(
      style = cell_borders(
        sides = "bottom", color = inrae_colors$institutional, weight = px(2)
      ),
      locations = cells_body()
    )
}


#' Bootstrap 5 INRAE theme
#'
#' @return A bslib theme with INRAE colors
#' @export
bs_inrae <- function() {
  bslib::bs_theme(
    version = 5,
    bg = "#FFFFFF",
    fg = "#000000",
    primary = "#00a3a6",
    secondary = "#423089",
    success = "#9dc544",
    info = "#9ed6e3",
    warning = "#FFF100",
    danger = "#ed6e6c",
    base_font = "Raleway",
    heading_font = "Raleway"
  )
}
