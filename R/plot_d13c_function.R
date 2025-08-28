plot_d13c <- function(plot_data, background_dataset, age_max_lim, age_min_lim) {
  ggplot() +
    theme_bw(base_size = 18) +
    theme_13C_age +
    labs(
      x = expression(delta^13 * "C"[carb] * " (\u2030)"), # "d13C (permille)",
      y = "Age (Ma)"
    ) +
    scale_y_reverse(
      limits = c(age_max_lim, age_min_lim)
    ) +
    scale_colour_viridis_d(name = "Region", option = "turbo") +
    deeptime::coord_geo(pos = "left", dat = "stages") +
    annotate(
      geom = "point",
      x = background_dataset$d13c_carb,
      y = background_dataset$age_ma,
      colour = "grey80"
    ) +
    geom_point(
      data = plot_data, 
      aes(
        x = d13c_carb,
        y = age_ma,
        colour = region
      ),
      shape = 21
    ) +
    facet_grid(~ age_model_label)
}