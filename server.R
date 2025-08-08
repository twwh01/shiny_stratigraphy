# server script for ShinyStratigraphy
function(input, output, session){
  selected_options <- select_options_server(
    id = "select_options"
  )

  plot_d13c_age_server(
    id = "plot_d13c_age",
    data_13c_plot, # from global.R
    selected_options
  )

  page_about_server(id = "About")

  page_refs_server(id = "Refs")
  
}
