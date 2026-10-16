# Tema e cores compartilhados pelos posts.
# Uso em um post: source(here::here("R/theme_two_nil.R"))

two_nil_colors <- c(
  pitch = "#1b7a3d",
  grass = "#7bc47f",
  chalk = "#f7f7f2",
  ink   = "#1f2933"
)

theme_two_nil <- function(base_size = 12, base_family = "") {
  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold", colour = two_nil_colors[["ink"]]),
      plot.title.position = "plot",
      plot.caption = ggplot2::element_text(colour = "grey40", hjust = 0),
      plot.caption.position = "plot",
      panel.grid.minor = ggplot2::element_blank(),
      legend.position = "bottom"
    )
}
